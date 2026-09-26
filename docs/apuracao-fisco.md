# Apuração de IBS/CBS do Fisco

O bundle `org.idempierelbr.rtc` baixa das APIs da Receita Federal a apuração da CBS que o fisco fez a partir dos DF-e e grava o dado como veio:

- **débitos e créditos**, por documento e período, na janela **Apuração de IBS/CBS (RTC/Fisco)**;
- **pagamentos e recolhimentos**, por DARF e com a composição, na janela **Pagamento de IBS/CBS (RTC/Fisco)**.

As credenciais e as solicitações ficam na janela **Configuração da Integração (RTC/Fisco)**.

Não há conciliação com as notas do iDempiere: nem todo documento apurado pela Receita existe no sistema (notas emitidas por outro software, XML de terceiros não baixado). A conciliação será uma funcionalidade à parte, sobre estes dados.

Em 2026 a apuração da CBS é informativa, sem efeito fiscal. As chamadas feitas pelo LBR são todas de consulta.

**IBS:** o CGIBS ainda não publicou API de apuração. A configuração aceita o tributo, mas a abertura é recusada com essa explicação.

**Pagamentos e recolhimentos:**

- **Pagamentos** são os DARFs que extinguem débitos do próprio contribuinte — o pagamento dele, o recolhimento feito pelos adquirentes e o split payment. Cada item da composição é ligado ao período de apuração pelo `pa` e entra no **Total Pago** daquele período.
- **Recolhimentos** são os que o contribuinte fez **como adquirente**, sobre débitos de fornecedores (RAD e split payment). O `pa` ali é o do fornecedor; por isso a composição não é ligada à apuração do contribuinte nem entra no Total Pago dele.
- O **tipo** do pagamento é gravado como o número que vier. A Receita ainda não documentou os códigos, e o LBR não inventa a lista.
- O **total do DARF** é a soma da composição: o arquivo não traz o total do pagamento, só o de cada item.
- Pagamento sem **número do DARF** não é gravado, e o motivo aparece no log do processo. É o número que identifica o pagamento; sem ele, reimportar o arquivo duplicaria o registro. O arquivo original fica anexado à solicitação.

## Como funciona

As APIs são assíncronas:

1. **Abertura** — o LBR pede o arquivo de um serviço (débitos, créditos, pagamentos ou recolhimentos) para o CNPJ base, informando o endereço do webhook. A Receita confere o endereço com um `HEAD` e, se ele não responder, cancela o pedido. Em caso de sucesso, devolve um tíquete.
2. **Processamento** — leva de minutos a até 4 horas.
3. **Aviso** — ao concluir, a Receita chama o webhook com a URL de download (válida por 48 horas) ou com o erro.
4. **Consulta de situação** — o LBR também pergunta a situação pelo tíquete. É o que garante o download mesmo que o aviso nunca chegue; o webhook só encurta a espera.
5. **Download e importação** — o arquivo é anexado à solicitação tal como veio, a URL é descartada, e só então os documentos são gravados.

Limites da Receita que o LBR respeita:

- **4 aberturas por dia** por serviço. O LBR conta as do dia e recusa a quinta.
- **Janela incremental de 8 dias**: a Receita devolve só o que mudou desde a consulta anterior, limitado aos últimos 8 dias. Ficar mais de 8 dias sem importar perde alterações em definitivo. A abertura avisa a partir de 6 dias (`LBR_RTC_FISCO_WINDOW_WARN_DAYS`).
- A **primeira** consulta de cada serviço traz o que foi incluído ou atualizado desde o 1º dia do mês corrente.

## Pré-requisitos

### 1. Credencial do Receita Integra

Gerada em <https://consumo.tributos.gov.br/> pelo representante legal ou por procurador digital do **CNPJ matriz**. Não usa certificado digital A1/A3: a autenticação é OAuth 2.0 com *Client ID* e *Client Secret*. O manual está em <https://arquivos.receitafederal.gov.br> → Documentos → Técnicos → Receita Integra.

### 2. Webhook publicado em HTTPS

A Receita só aceita `urlRetorno` HTTPS acessível pela internet. O bundle publica o recurso em:

```
https://<servidor>/rtc/v1/fisco/webhook/<segredo>
```

O `<segredo>` é o **Segredo do Webhook** da configuração. É ele que identifica a configuração quando a Receita chama de volta; um segredo desconhecido recebe `404`.

No proxy reverso, publique **somente** o caminho do webhook, e nada mais do iDempiere. Exemplo com nginx:

```nginx
location /rtc/v1/fisco/webhook/ {
    proxy_pass http://127.0.0.1:8080;
    proxy_set_header Host $host;
    proxy_set_header X-Forwarded-Proto https;
    client_max_body_size 64k;
}
```

O corpo do aviso é pequeno; limitar o tamanho no proxy protege o servidor de envios abusivos.

## Configuração

Janela **Configuração da Integração (RTC/Fisco)** — um registro por raiz de CNPJ e tributo. O registro é da empresa (tenant), não de uma organização: a apuração abrange todas as filiais da raiz. Uma empresa com cinco filiais de uma raiz e uma sexta organização de outra raiz tem **dois** registros.

| Campo | O que informar |
|---|---|
| CNPJ Base | Os 8 dígitos da raiz. Aceita o CNPJ completo ou formatado; o LBR guarda só a raiz. Se nenhuma organização tiver parceiro de negócios vinculado com essa raiz, o LBR avisa ao gravar (não bloqueia) |
| Tributo | CBS |
| Client ID / Client Secret | Credencial do Receita Integra |
| URL Base do Webhook | O endereço público até `/webhook`, sem o segredo — ex.: `https://erp.empresa.com.br/rtc/v1/fisco/webhook` |
| Segredo do Webhook | Ao menos 16 caracteres entre letras, números, hífen e sublinhado. Se o campo não for obrigatório no dicionário e ficar vazio, o LBR gera um |
| URL do Token / URL Base da API | Deixe vazios. Servem só para o caso de a Receita mudar os endereços: vazios, valem `https://api.receitafederal.gov.br/token` e `https://api.receitafederal.gov.br/apuracao-cbs/v2` |

Todos os endereços precisam ser HTTPS.

Restrinja a janela por perfil (role), como a do certificado digital: o *Client Secret* dá acesso aos dados fiscais da empresa. As tabelas são de nível **Client only**: o perfil precisa de nível de usuário com Cliente (` CO` ou `SCO`) para abrir as janelas e rodar os processos, e isso vale também para o perfil usado pelo agendador.

## Processos

| Processo | Onde | O que faz |
|---|---|---|
| Abrir Solicitação ao Fisco | Botão na configuração, ou agendador | Abre os quatro serviços de uma configuração (ou de todas as ativas, sem parâmetro). Cada serviço tem o seu próprio limite de 4 por dia |
| Consultar e Importar Solicitação | Botão na solicitação, ou agendador | Consulta, baixa e importa as solicitações em andamento. Sobre uma solicitação específica, ignora o intervalo mínimo; se ela já foi importada, reimporta o arquivo anexado |
| Importar Arquivo de Apuração | Botão na apuração | Importa um JSON salvo localmente, sem rede |

O resultado de cada solicitação aparece no log do processo. A importação é idempotente: reimportar o mesmo arquivo não duplica nada. Um documento de débito ou crédito só é sobrescrito quando a data de atualização do arquivo é mais recente que a gravada. Um pagamento, que não traz essa data, fica com o que veio no último arquivo importado.

### Agendadores sugeridos

| Processo | Frequência |
|---|---|
| Abrir Solicitação ao Fisco | 1 vez por dia |
| Consultar e Importar Solicitação | a cada 15 minutos |

Ative-os só depois de um teste manual bem-sucedido: sem configuração válida, a abertura diária consome chamadas do limite com erro.

## Teste do webhook

Com o servidor no ar e uma configuração ativa:

```bash
# validação que a Receita faz na abertura: espera 200
curl -I https://erp.empresa.com.br/rtc/v1/fisco/webhook/<segredo>

# segredo errado: espera 404
curl -I https://erp.empresa.com.br/rtc/v1/fisco/webhook/segredo-errado-0000
```

O servidor registra no log apenas o tíquete, o horário e o resultado de cada aviso. A URL assinada nunca vai para o log.

## Parâmetros

Os `LBR_RTC_FISCO_*` estão em [sysconfig.md](sysconfig.md#apuração-de-ibscbs-fisco).

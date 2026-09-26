# SysConfig do iDempiereLBR

Referência das configurações de sistema (janela **Configurador do Sistema** / tabela `AD_SysConfig`) próprias do iDempiereLBR.

## Como ler esta página

- **Padrão**: valor usado quando **não existe** registro correspondente em `AD_SysConfig` para o Cliente/Organização em uso. Onde está escrito *(no seed)*, o registro **já vem instalado** com aquele valor e, portanto, é ele que vale até ser alterado.
- **Nível**: nível em que a configuração é efetivamente lida pelo código. *Organização* significa que o LBR consulta Cliente **e** Organização (dá para ter valores diferentes por filial); *Cliente* significa que o valor é lido apenas no nível do Cliente, mesmo que o registro esteja marcado como Organização.
- **Y/N**: além de `Y`/`N`, o iDempiere aceita `true`/`false`. Valor vazio equivale a "não configurado" (usa o padrão).
- **Inteiro**: valor não numérico é ignorado (usa o padrão e grava erro no log). Atenção: `0` é um valor válido — **não** cai no padrão.

Alterações em `AD_SysConfig` são lidas em cache; reinicie o servidor ou use **Reset Cache** se o novo valor não surtir efeito.

## Parceiro de Negócios

| SysConfig | Valores | Padrão | Nível | Para que serve |
|---|---|---|---|---|
| `LBR_USE_UNIFIED_BP` | Y/N | `N` *(no seed)* | Cliente | Cadastro unificado de filiais em um único Parceiro de Negócios |
| `LBR_UNIQUE_BP_PER_CLIENT` | Y/N | `Y` | Cliente | Escopo da verificação de CNPJ/CPF duplicado |
| `LBR_SKIP_IE_VALIDATION` | Y/N | `N` | Cliente | Dispensa a validação do dígito verificador da Inscrição Estadual |

**`LBR_USE_UNIFIED_BP`** — Com `N` (padrão), cada filial é um Parceiro de Negócios próprio, com CNPJ e IE no cadastro do Parceiro. Com `Y`, a matriz e as filiais ficam no mesmo Parceiro e o CNPJ/IE de cada uma é informado na aba **Localização**; nesse modo o LBR grava no Parceiro apenas a raiz do CNPJ (8 dígitos + `000000`), marca o Tipo de IE do Parceiro como *Isento* e passa a ler CNPJ e IE da Localização na emissão da NF-e. A verificação de duplicidade também muda: compara a raiz de 8 dígitos em vez do CNPJ inteiro. O valor é publicado no contexto (`#LBR_USE_UNIFIED_BP`) no login.

> Se o registro for **apagado** da tabela, o comportamento fica inconsistente: dois pontos do código (leitura de CNPJ e de IE para a NF-e) assumem `Y` como padrão, enquanto todos os demais assumem `N`. Mantenha o registro existente e apenas troque o valor.

**`LBR_UNIQUE_BP_PER_CLIENT`** — Com `Y` (padrão), o mesmo CNPJ/CPF não pode se repetir em nenhum Parceiro do Cliente. Com `N`, a unicidade passa a ser verificada dentro da Organização, ou seja, Organizações diferentes podem cadastrar o mesmo CNPJ/CPF.

**`LBR_SKIP_IE_VALIDATION`** — Com `Y`, a IE informada é aceita como está (apenas desformatada), sem passar pelo algoritmo de validação da UF. Útil para cadastros legados ou UFs cujo cálculo padrão rejeita inscrições válidas.

## Impostos

| SysConfig | Valores | Padrão | Nível | Para que serve |
|---|---|---|---|---|
| `LBR_ICMS_REGIME` | `TN` ou `SN` | `TN` *(no seed)* | Organização | Regime de tributação da empresa (Normal ou Simples Nacional) |
| `LBR_USE_ICMS_MATRIX` | Y/N | `Y` *(no seed)* | Cliente | Aplica a Matriz de ICMS no cálculo de impostos |
| `LBR_USE_ISS_MATRIX` | Y/N | `Y` *(no seed)* | Cliente | Aplica a Matriz de ISS no cálculo de impostos |
| `LBR_PRODUCT_FISCAL_NAME_SIMPLIFIED` | Y/N | `N` | Organização | Usa a Categoria do Produto como descrição fiscal do item |

**`LBR_ICMS_REGIME`** — `TN` = Regime Normal, `SN` = Simples Nacional. Define onde a CST/CSOSN é gravada nos detalhes da linha (`LBR_ICMS_TaxStatusTN` ou `LBR_ICMS_TaxStatusSN`) e o CRT enviado no XML da NF-e: `TN` → `3` (Regime Normal), `SN` → `1` (Simples Nacional). Qualquer outro valor resulta em CRT em branco no XML.

**`LBR_USE_ICMS_MATRIX` / `LBR_USE_ISS_MATRIX`** — Com `N`, a consulta à matriz correspondente devolve vazio e as alíquotas cadastradas em **Matriz de ICMS** (origem × destino) ou **Matriz de ISS** (região/cidade/produto) deixam de ser consideradas — o cálculo passa a depender apenas da configuração de impostos do produto/parceiro.

**`LBR_PRODUCT_FISCAL_NAME_SIMPLIFIED`** — Com `Y`, a descrição do item que vai para o documento fiscal (e daí para o XML) passa a ser o nome da **Categoria do Produto** em vez do nome do produto. Usado por quem precisa de descrição genérica no documento.

## NF-e — emissão

| SysConfig | Valores | Padrão | Nível | Para que serve |
|---|---|---|---|---|
| `LBR_SEFAZ_LOT_ON_COMPLETE` | Y/N | `Y` | Organização | Cria o Lote de NF-e automaticamente ao completar a Nota Fiscal |
| `LBR_SEFAZ_LOT_SYNC` | Y/N | `Y` | Organização | Define se o lote criado é síncrono ou assíncrono |
| `LBR_TIMEZONE` | Texto `±HH:mm` | `-03:00` | Organização | Fuso horário gravado nas datas/horas do XML |
| `LBR_DAYLIGHT_SAVING` | Y/N | `N` | Organização | Ajuste de horário de verão sobre o fuso configurado |
| `LBR_NFe_CreateISSQNLines` | Y/N | `Y` | Organização | Inclui (ou não) produtos do tipo Serviço na Nota Fiscal gerada |

**`LBR_SEFAZ_LOT_ON_COMPLETE`** — Vale apenas para documentos emitidos pela própria empresa. Com `N`, completar a Nota Fiscal não cria lote algum: o envio à SEFAZ precisa ser feito criando o Lote de NF-e manualmente.

**`LBR_SEFAZ_LOT_SYNC`** — Preenche o tipo de processamento do lote criado no passo acima: `Y` → síncrono (`S`), `N` → assíncrono (`A`).

**`LBR_TIMEZONE`** — Formato `-03:00` (5 ou 6 caracteres). Valor com tamanho fora dessa faixa é descartado com erro no log e o padrão `-03:00` é usado. Valor de 5 caracteres sem sinal recebe `+` automaticamente (`03:00` → `+03:00`).

**`LBR_DAYLIGHT_SAVING`** — Com `Y`, subtrai uma hora do fuso configurado. Mantido para os períodos em que houve horário de verão no Brasil.

**`LBR_NFe_CreateISSQNLines`** — Com `N`, produtos do tipo *Serviço* são ignorados ao gerar a Nota Fiscal a partir do documento de origem (Pedido, Fatura, Remessa ou RMA). Indicado para quem emite os serviços separadamente em NFS-e.

## NF-e — importação de XML e DF-e

| SysConfig | Valores | Padrão | Nível | Para que serve |
|---|---|---|---|---|
| `LBR_DFE_MAX_PAGES_PER_RUN` | Inteiro (≥ 1) | `20` | Organização | Teto de páginas lidas da distribuição de DF-e por execução |
| `LBR_DFE_BLOCK_MINUTES` | Inteiro (minutos) | `60` | Organização | Espera imposta localmente entre consultas à distribuição |
| `LBR_DFE_MAX_DOCS_PER_BATCH` | Inteiro (≥ 1) | `50` | Cliente | Teto de DF-e carregados de uma vez na tela de importação |
| `LBR_DFE_MATCH_BY_PRODUCT_VALUE` | Y/N | `N` | Cliente | Liga o de-para de produto por código do emitente + NCM |
| `LBR_PRODUCTPO_WHEN_GEN_NF_FROM_XML` | Y/N | `Y` | Cliente | Grava o vínculo Produto × Fornecedor a cada conciliação |
| `LBR_CREATE_NF_LBR_TAXLINES_FROM_XML` | Y/N | `N` | Organização | Cria registros de imposto do LBR a partir dos impostos do XML |
| `LBR_READONLYDELIVERYDATE_WHEN_GEN_NF_FROM_XML` | Y/N | `N` *(no seed)* | Organização | Bloqueia a edição da Data de Entrada na importação |

**`LBR_DFE_MAX_PAGES_PER_RUN`** — Cada página traz até 50 documentos da distribuição (DistDFe). Valores menores encurtam a execução; o processo continua de onde parou na próxima vez, pelo NSU.

**`LBR_DFE_BLOCK_MINUTES`** — Após a SEFAZ responder *nenhum documento localizado* (cStat 137) ou *fim da fila* (cStat 138), o LBR bloqueia novas consultas por esse tempo, que é a janela que a própria SEFAZ impõe. Valor menor que 1 é ignorado (volta a 60).

> Reduzir este valor aumenta o risco de bloqueio do CNPJ por **consumo indevido** (cStat 656) — que é imposto pela SEFAZ e dura uma hora. Só altere sabendo disso.

**`LBR_DFE_MAX_DOCS_PER_BATCH`** — Limita quantos DF-e são trazidos de uma vez para o formulário de importação quando nenhum filtro foi digitado. Com filtro preenchido, não há limite.

**`LBR_DFE_MATCH_BY_PRODUCT_VALUE`** — Liga o último nível da cascata de de-para de produtos: casar `M_Product.Value` com o `cProd` do emitente quando o NCM também for igual. Desligado por padrão porque o código do produto no cadastro do emitente não tem relação garantida com o do nosso cadastro; ligue apenas se essa convenção valer para seus fornecedores.

**`LBR_PRODUCTPO_WHEN_GEN_NF_FROM_XML`** — Com `Y` (padrão), toda conciliação feita à mão vira um registro **Compras** do produto (`M_Product_PO`), com o código e o GTIN do fornecedor, de modo que a próxima importação daquele fornecedor resolva o item sozinha. Com `N`, a mesma pendência volta a cada importação.

**`LBR_CREATE_NF_LBR_TAXLINES_FROM_XML`** — Com `Y`, além dos detalhes por linha, a importação cria os registros de imposto do LBR (`LBR_Tax`/`LBR_TaxLine`) com os valores do XML. Falhas aqui não abortam a importação — ficam registradas no log.

**`LBR_READONLYDELIVERYDATE_WHEN_GEN_NF_FROM_XML`** — Com `Y`, o campo **Data de Entrada** fica somente leitura na tela de geração da Nota Fiscal a partir do XML, fixado na data corrente.

## Boleto e CNAB

| SysConfig | Valores | Padrão | Nível | Para que serve |
|---|---|---|---|---|
| `LBR_BOLETO_MOVIMENTO_ID_ON_COMPLETE` | Inteiro (`LBR_Cob_Movimento_ID`) | `0` *(no seed)* | Organização | Movimento criado ao completar um boleto |
| `LBR_CNAB_CREATE_NOTICE` | Y/N | `Y` *(no seed)* | Organização | Gera Aviso ao usuário na geração/retorno de arquivo CNAB |
| `LBR_CNAB_CEF_TIPOREMESSA` | Texto (até 20 caracteres) | `REMESSA-PRODUCAO` | Organização | Conteúdo do campo "uso da empresa" no header da remessa da Caixa |
| `LBR_CNAB_AUTO_DEBIT_NOTE` | Y/N | `N` | Organização | Gera Nota de Débito automática de juros/multa no retorno CNAB |
| `LBR_CNAB_DEBIT_NOTE_DOCTYPE_ID` | Inteiro (`C_DocType_ID`) | `0` | Organização | Tipo de Documento da Nota de Débito gerada |

**`LBR_BOLETO_MOVIMENTO_ID_ON_COMPLETE`** — ID do registro de **Movimento de Cobrança** criado quando um boleto é completado. Quando a configuração não existe, o LBR usa o movimento `01 - Entrada de Títulos`.

> O registro vem no seed com valor `0`, e `0` é um valor válido (não cai no padrão). Nesse estado, completar um boleto sem movimento falha com *"Could not create intial movement"*. Informe o `LBR_Cob_Movimento_ID` desejado ou desative/remova o registro para voltar ao `01 - Entrada de Títulos`.

**`LBR_CNAB_CREATE_NOTICE`** — Com `Y` (padrão), o usuário que gerou a remessa recebe um Aviso com o arquivo e o log do processo anexados; no retorno, recebe um Aviso identificando banco e convênio processados.

**`LBR_CNAB_CEF_TIPOREMESSA`** — Texto gravado no campo de uso exclusivo da empresa (posições 193-212) do header do arquivo de remessa da Caixa Econômica Federal. Use `REMESSA-TESTE` durante a homologação com o banco e `REMESSA-PRODUCAO` em produção. Só afeta o módulo da Caixa.

**`LBR_CNAB_AUTO_DEBIT_NOTE`** — Com `Y`, ao processar o retorno CNAB o LBR gera, completa e envia à SEFAZ uma NF-e de Débito para cada liquidação que tenha juros/multa, vinculando-a ao movimento do boleto (a mesma nota não é gerada duas vezes). Cada nota roda em transação isolada: falhas ficam no log e nunca desfazem os pagamentos do retorno.

**`LBR_CNAB_DEBIT_NOTE_DOCTYPE_ID`** — Tipo de Documento usado nessa Nota de Débito. Em `0` (padrão), a nota herda o Tipo de Documento da NF-e de venda original — ou seja, sai na série da venda e sem a configuração fiscal (CFOP) própria de nota de débito. Configure um Tipo de Documento específico se precisar dessa separação.

## Apuração de IBS/CBS (Fisco)

Parâmetros da integração com as APIs de apuração da CBS da Receita Federal (bundle `org.idempierelbr.rtc`). Nenhum vem no seed: sem registro, vale o padrão. Valor zero ou negativo também volta ao padrão.

| SysConfig | Valores | Padrão | Nível | Para que serve |
|---|---|---|---|---|
| `LBR_RTC_FISCO_MAX_OPEN_PER_DAY` | Inteiro (≥ 1) | `4` | Cliente | Teto de solicitações abertas por dia, por configuração e serviço |
| `LBR_RTC_FISCO_POLL_MINUTES` | Inteiro (minutos) | `15` | Cliente | Intervalo mínimo entre consultas de situação de uma mesma solicitação |
| `LBR_RTC_FISCO_HTTP_TIMEOUT_SECONDS` | Inteiro (segundos) | `60` | Cliente | Tempo limite de conexão e de resposta das chamadas à Receita |
| `LBR_RTC_FISCO_DOWNLOAD_MAX_MB` | Inteiro (MB) | `50` | Cliente | Tamanho máximo do arquivo baixado da URL assinada |
| `LBR_RTC_FISCO_WINDOW_WARN_DAYS` | Inteiro (dias) | `6` | Cliente | Dias sem importação a partir dos quais a abertura avisa sobre a janela incremental |

**`LBR_RTC_FISCO_MAX_OPEN_PER_DAY`** — A Receita aceita 4 aberturas por dia no endpoint de cada serviço. O LBR conta as solicitações do dia (horário de Brasília) para a mesma configuração e o mesmo serviço — inclusive as recusadas, porque não há como saber quais a Receita descontou — e recusa abrir além do teto. Só faz sentido **diminuir**: aumentar não aumenta o limite da Receita.

**`LBR_RTC_FISCO_POLL_MINUTES`** — O processo *Consultar e Importar Solicitação* não pergunta a situação de uma solicitação antes de passar esse intervalo desde a consulta anterior (com um minuto de tolerância, para o agendador que roda no mesmo intervalo não pular uma volta). A primeira consulta espera só o tempo estimado pela própria Receita (`tEASegundos`). Rodando o processo à mão sobre uma solicitação específica, o intervalo é ignorado.

**`LBR_RTC_FISCO_HTTP_TIMEOUT_SECONDS`** — Vale para o token, a abertura, a consulta de situação e o download.

**`LBR_RTC_FISCO_DOWNLOAD_MAX_MB`** — Protege o servidor de um arquivo anormalmente grande. Se um arquivo legítimo for recusado, a mensagem do processo diz para aumentar este valor; a URL assinada continua valendo por 48 horas.

**`LBR_RTC_FISCO_WINDOW_WARN_DAYS`** — A Receita devolve só o que mudou desde a consulta anterior, limitado aos últimos 8 dias; passar disso perde as alterações mais antigas em definitivo. A abertura avisa quando a última importação do serviço tem esse número de dias ou mais, e avisa com mais ênfase a partir de 8.

## SysConfig do core usadas pelo LBR

Não são próprias do LBR, mas alteram o comportamento de telas do LBR:

| SysConfig | Valores | Padrão | Para que serve |
|---|---|---|---|
| `ADDRESS_VALIDATION` | Texto (códigos de país separados por `;`) | *(vazio)* | Para os países listados, o diálogo de Localização do LBR exibe o seletor de validação de endereço. Vazio ou ausente: o seletor não aparece |

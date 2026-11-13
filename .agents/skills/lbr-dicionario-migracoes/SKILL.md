---
name: lbr-dicionario-migracoes
description: Como tratar mudanças do LBR que precisam de banco ou de Application Dictionary — servidor de ID centralizado do LBR (SysConfig PROJECT_ID_*), preferências para gerar o script, onde os scripts ficam, nome e revisão do par PostgreSQL/Oracle. Use sempre que a tarefa pedir tabela, coluna, elemento, janela, aba, campo, processo, parâmetro, referência/lista, regra de validação, mensagem, SysConfig ou qualquer registro AD_*, ou ao revisar arquivos em org.idempierelbr.core/migration/. O agente NÃO escreve scripts de migração nem IDs.
---

# Dicionário de dados e migrações

Se o clone do iDempiere tiver `.agents/skills/` com uma skill de mudanças de
banco (hoje `idempiere-database-changes`), considere-a também. **Onde ela
falar de servidor de ID oficial, EntityType `D`, pasta `migration/` do core ou
`IDEMPIERE-####`, vale esta skill.**

## A regra: você não escreve script de migração

No LBR, todo registro novo de dicionário recebe um ID do **servidor de ID
centralizado do LBR**, e o script de migração é **gerado pelo próprio
iDempiere** enquanto o desenvolvedor edita o dicionário na interface, com o log
de migração ligado. O iDempiere grava o par PostgreSQL + Oracle de uma vez. Um
script escrito à mão ou um ID inventado pode colidir com IDs de outros
contribuidores.

Portanto, **nunca**:

- crie ou edite `.sql` em `org.idempierelbr.core/migration/` com
  `INSERT`/`UPDATE`/`DELETE` em tabelas `AD_*`;
- invente ou chute `AD_*_ID` ou `*_UU`;
- escreva DDL (`CREATE TABLE`, `ALTER TABLE`) para tabelas do LBR;
- edite à mão classes geradas `X_*` / `I_*`;
- "conserte" um script gerado reescrevendo os comandos. Aponte o problema e
  deixe o desenvolvedor gerar de novo ou corrigir.

O que você **faz**: detecta que precisa de dicionário, especifica com precisão,
orienta a geração, revisa o resultado e escreve o Java que usa os objetos
novos.

Exceção: se o desenvolvedor pedir **explicitamente** um script à mão (por
exemplo, um `UPDATE` pontual em registro existente), ele não cria ID novo, vem
em par PostgreSQL + Oracle e segue o formato do §5.

## Passo 1: detectar e parar

Assim que perceber que a tarefa precisa de qualquer mudança de dicionário ou de
schema, **pare de codificar essa parte** e avise o desenvolvedor, de
preferência antes de escrever o Java.

Antes de afirmar que algo já existe (tabela, coluna, lista, flag, SysConfig),
**consulte o banco**. Não escreva de memória.

## Passo 2: especificar para o desenvolvedor

Entregue a lista exata do que criar, rotulando cada item como **LBR** ou
**Cliente** (ver `lbr-arquitetura` §6). Só os itens LBR geram script para o
repositório.

| Objeto | Detalhes | Onde |
|---|---|---|
| Elemento | ColumnName `LBR_IsExemplo`, Nome/Nome de impressão, EntityType `LBR` | LBR |
| Coluna | Tabela `LBR_NotaFiscal`, Referência `Yes-No`, padrão `N`, obrigatória, atualizável | LBR |
| Campo | Janela *Nota Fiscal*, aba *Nota Fiscal*, depois do campo X, lógica de exibição | LBR |
| Lista | Referência `LBR_Exemplo`, valores `01`–`05` com nome de cada um, fonte (NT/IT) | LBR |
| Mensagem | Value `LBR_ExemploErro`, tipo `E`, texto pt-BR | LBR |
| SysConfig | Nome `LBR_EXEMPLO`, padrão, nível de configuração; documentar em `docs/sysconfig.md` | LBR |
| Definição de Impostos | Valor para a organização X | Cliente |

Informe tabela, nome da coluna, referência, tamanho, padrão, obrigatoriedade,
onde o campo aparece e a lógica de exibição. Siga as convenções: prefixo
`LBR_`, `Is*` para booleanos, `*_ID` para chaves estrangeiras, EntityType
`LBR`. Quando a lista vier de uma tabela de domínio da NT ou do Informe Técnico,
cite a fonte e diga o que não foi possível confirmar.

## Passo 3: orientar a geração

O desenvolvedor executa os passos abaixo. Você explica.

### 3.1. Servidor de ID do LBR (uma vez por banco)

O iDempiere pede o ID ao servidor do LBR pelas SysConfig `PROJECT_ID_*`. **A
URL do servidor, o usuário e a senha são enviados por e-mail: peça a
alan@lescano.com.br.**

Em *Configurador do Sistema*, empresa System:

| SysConfig | Valor |
|---|---|
| `PROJECT_ID_USE_CENTRALIZED_ID` | `Y` |
| `PROJECT_ID_PROJECT` | `iDempiereLBR` |
| `PROJECT_ID_WEBSITE` | URL recebida por e-mail |
| `PROJECT_ID_USER` | usuário recebido por e-mail |
| `PROJECT_ID_PASSWORD` | senha recebida por e-mail |
| `PROJECT_ID_COMMENTS` | comentário livre (opcional) |

O seed vem com valores de exemplo (`TestProject`, `N`): sem o ajuste, os IDs
saem da sequência local e colidem com os de outros contribuidores.

**Nunca peça, mostre ou registre a senha.** Ao conferir a configuração, não
selecione o `Value` de `PROJECT_ID_PASSWORD`.

### 3.2. Preferências da sessão

1. Entre como **System Administrator**, na empresa System.
2. Abra **Preferência** e configure:
   - **Manutenção do Dicionário** (`AdempiereSys`) **desligada**. Ligada, o
     iDempiere pede o ID ao servidor oficial do core, que é só para o
     dicionário do próprio iDempiere (EntityType `D`).
   - **Registrar Script de Migração** ligado.
   - **Comentário do Script de Migração**: descrição curta da mudança. Vira a
     primeira linha do script.

### 3.3. Criar os objetos

1. Crie ou altere os objetos do Passo 2 com EntityType `LBR`.
2. Use **Sincronizar Coluna** (ou *Criar Colunas a partir do Banco de Dados*,
   quando for o caso) para levar a mudança ao banco físico.
3. Se tabelas ou colunas mudaram, gere de novo as classes de modelo com o
   processo **Gerar Modelo** (*Generate Model*, na janela *Tabela e Coluna*) ou
   o `model.generator.launch` do core: EntityType `LBR`, pacote
   `org.idempierelbr.<bundle>.model` e a pasta `src` do bundle dono da tabela
   (ver `lbr-arquitetura` §4).

### 3.4. Levar o script para o LBR

O iDempiere grava os scripts **na pasta de migração do core**, não na do LBR:

- em desenvolvimento: `../idempiere/migration/iD<versão>/{postgresql,oracle}/`;
- fora do modo de desenvolvimento: no diretório temporário do Java
  (`java.io.tmpdir`), em `migration/iD<versão>/…`.

O nome gerado é `yyyyMMddHHmm_PlaceholderForTicket.sql`, porque o iDempiere só
reconhece tickets `IDEMPIERE-####`. O desenvolvedor então:

1. **move** os dois arquivos para
   `org.idempierelbr.core/migration/iD<versão>/postgresql/` e `…/oracle/`. Não
   deixe sobras no clone do core;
2. **renomeia** os dois arquivos para `yyyyMMddHHmm_DescricaoCurta.sql`,
   mantendo o timestamp (ex.: `202609231541_RTCFisco.sql`);
3. **ajusta** a linha `SELECT register_migration_script('…')` dos dois arquivos
   para o nome novo.

Espere o desenvolvedor dizer que os scripts estão no lugar.

## Passo 4: revisar os scripts

Só revise e devolva os problemas ao desenvolvedor:

- **Os dois arquivos existem**, com o mesmo nome, em
  `org.idempierelbr.core/migration/iD<versão>/postgresql/` e `…/oracle/`. Oracle
  é obrigatório.
- Nome `yyyyMMddHHmm_DescricaoCurta.sql`, com timestamp maior que o do script
  mais novo da pasta.
- Linha 1: `-- <comentário>`. Linha 2: `SELECT register_migration_script('<nome do próprio arquivo>') FROM dual;`.
  Um nome errado aqui faz o SyncDB reaplicar o script.
- O arquivo Oracle tem `SET SQLBLANKLINES ON` e `SET DEFINE OFF` depois do
  cabeçalho.
- **IDs literais na faixa 800000–809999.** `nextidfunc(...)` no script indica
  que o servidor de ID não estava em uso. Nesse caso o desenvolvedor precisa
  gerar de novo.
- **Sem colisão** de ID ou `_UU` com scripts que já estão na branch:
  ```bash
  grep -rn "<ID>" org.idempierelbr.core/migration/
  ```
- `EntityType='LBR'` nos registros de dicionário. `AD_Client_ID=0`, salvo
  intenção explícita.
- **Comandos que falharam também são registrados.** Procure duplicatas,
  tentativa e erro, mudanças desfeitas no mesmo script e registros alheios à
  tarefa. Peça para remover.
- Nenhum dado de cliente: só o que foi rotulado **LBR** no Passo 2.
- PostgreSQL e Oracle com o mesmo conjunto de mudanças.

## Passo 5: aplicar e escrever o código

- No banco onde o dicionário foi editado, os scripts já estão aplicados. Em
  outros bancos, aplique com o SyncDB (ver `lbr-instalacao-build` §3).
- Escreva o Java usando as classes regeneradas: getters/setters do `X_*`,
  constantes `COLUMNNAME_*` e as constantes de lista. Nada de
  `get_ValueAsString("...")` para coluna que tem getter.
- Os scripts vão no **mesmo commit ou PR** que o código que depende deles.
- SysConfig nova do LBR é documentada em `docs/sysconfig.md` na mesma PR.

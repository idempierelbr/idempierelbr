---
name: lbr-dicionario-migracoes
description: Como tratar mudanças do LBR que precisam de banco ou de Application Dictionary — servidor de ID centralizado do LBR (SysConfig PROJECT_ID_*), geração do script pela API REST do iDempiere (pelo agente) ou pela interface (pelo desenvolvedor), onde os scripts ficam, nome e revisão do par PostgreSQL/Oracle. Use sempre que a tarefa pedir tabela, coluna, elemento, janela, aba, campo, processo, parâmetro, referência/lista, regra de validação, mensagem, SysConfig ou qualquer registro AD_*, ou ao revisar arquivos em org.idempierelbr.core/migration/. O agente nunca escreve SQL de migração à mão nem inventa IDs.
---

# Dicionário de dados e migrações

Se o clone do iDempiere tiver `.agents/skills/` com uma skill de mudanças de
banco (hoje `idempiere-database-changes`), considere-a também. **Onde ela
falar de servidor de ID oficial, EntityType `D`, pasta `migration/` do core,
`IDEMPIERE-####`, ou disser que o agente não gera scripts, vale esta skill.**

## A regra: o script é gerado pelo iDempiere, nunca escrito à mão

No LBR, todo registro novo de dicionário recebe um ID do **servidor de ID
centralizado do LBR**, e o script de migração é **gerado pelo próprio
iDempiere** enquanto o dicionário é alterado com o log de migração ligado. O
iDempiere grava o par PostgreSQL + Oracle de uma vez. Há dois caminhos:

| Caminho | Quem faz | Quando |
|---|---|---|
| **API REST** (§3.2) | **você, o agente** | O servidor local tem o plugin REST com suporte a geração de script instalado e ativo |
| **Interface web** (§3.3) | o desenvolvedor | Sem o plugin REST, ou quando o desenvolvedor preferir |

Nos dois casos, **nunca**:

- escreva à mão `.sql` em `org.idempierelbr.core/migration/` com
  `INSERT`/`UPDATE`/`DELETE` em tabelas `AD_*`;
- invente ou chute `AD_*_ID` ou `*_UU`;
- escreva DDL (`CREATE TABLE`, `ALTER TABLE`) para tabelas do LBR;
- edite à mão classes geradas `X_*` / `I_*`;
- altere o dicionário pela API REST **sem** os cabeçalhos de migração (§3.2):
  a mudança iria para o banco sem script;
- "conserte" um script gerado reescrevendo os comandos. Aponte o problema e
  gere de novo. Remover comandos que falharam ou sobras de tentativa e erro só
  com a aprovação do desenvolvedor.

Exceção: se o desenvolvedor pedir **explicitamente** um script à mão (por
exemplo, um `UPDATE` pontual em registro existente), ele não cria ID novo, vem
em par PostgreSQL + Oracle e segue o formato do §4.

## Passo 1: detectar e parar

Assim que perceber que a tarefa precisa de qualquer mudança de dicionário ou de
schema, **pare de codificar essa parte**, de preferência antes de escrever o
Java.

Antes de afirmar que algo já existe (tabela, coluna, lista, flag, SysConfig),
**consulte o banco**. Não escreva de memória.

## Passo 2: especificar

Monte a lista exata do que criar, rotulando cada item como **LBR** ou
**Cliente** (ver `lbr-arquitetura` §6). Só os itens LBR geram script para o
repositório. **Mostre a lista ao desenvolvedor e espere a aprovação antes de
gerar**, seja você ou ele quem vá gerar.

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

## Passo 3: gerar

### 3.1. Servidor de ID do LBR (uma vez por banco, nos dois caminhos)

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

O seed vem com valores de exemplo (`TestProject`, `N`). Sem o ajuste, os IDs
saem da sequência local, o script sai com `nextidfunc(...)` e os IDs colidem
com os de outros contribuidores.

Com a configuração feita e a *Manutenção do Dicionário* (`AdempiereSys`)
**desligada**, o uso do servidor é automático, pela interface ou pelo REST: o
iDempiere busca o ID no servidor do LBR e grava o ID literal no script. Com
`AdempiereSys` ligado, ele pede o ID ao servidor oficial do core, que é só para
o dicionário do próprio iDempiere (EntityType `D`).

**Nunca peça, mostre ou registre a senha.** Ao conferir a configuração, não
selecione o `Value` de `PROJECT_ID_PASSWORD`.

### 3.2. Pela API REST (agente)

#### Pré-requisitos (confira todos antes de começar)

- **Plugin REST** (`com.trekglobal.idempiere.rest.api`, repositório
  [idempiere-rest](https://github.com/bxservice/idempiere-rest)) instalado e
  ativo no servidor, numa versão com geração de script de migração (PRs #544 e
  #547, de out./nov. de 2026). No Eclipse, o bundle precisa estar marcado no
  launch. O core também precisa ter o IDEMPIERE-7173 (na `release-13` desde
  29/10/2026).
- **Servidor local, em modo de desenvolvimento**, apontando para um **banco de
  desenvolvimento** criado do seed. Nunca o banco de um cliente: a mudança vai
  direto para o dicionário do banco do servidor.
- **Acesso à pasta onde o servidor grava os scripts** (§3.4). Com servidor
  remoto ou fora do modo de desenvolvimento, os arquivos ficam no diretório
  temporário da máquina do servidor: use o caminho da interface.
- **Servidor de ID configurado** (§3.1).
- **Credenciais de administrador na empresa System.** Peça ao desenvolvedor que
  as forneça por variável de ambiente ou um token já emitido. Nunca as imprima,
  grave em arquivo ou ponha em commit.

Se faltar qualquer item, não improvise: use o caminho da interface (§3.3).

#### Como gerar

1. **Token**: `POST /api/v1/auth/tokens` com `userName`, `password` e
   `parameters` `{"clientId": 0, "roleId": 0, "organizationId": 0}`, ou seja,
   empresa System e papel System Administrator. Consulte a documentação do
   plugin (README do repositório e https://bxservice.github.io/idempiere-rest-docs/)
   para os detalhes da autenticação.
2. **Todas as requisições que alteram o dicionário** levam os três
   cabeçalhos:
   ```
   X-ID-LogMigrationScript: Y
   X-ID-AdempiereSys: N
   X-ID-MigrationScriptComment: <descrição curta da mudança>
   ```
   O comentário vira a primeira linha do script. Na mesma sessão, requisições
   com o mesmo comentário acrescentam ao mesmo arquivo.
3. **Uma requisição de teste primeiro.** Crie o primeiro registro e confira se
   o arquivo apareceu em **`postgresql/` e `oracle/`** (§3.4) com o ID literal
   na faixa 800000–809999, sem `nextidfunc`. **Se o arquivo não apareceu, pare.**
   O plugin ignora os cabeçalhos sem erro quando o usuário não é administrador
   da empresa System ou quando a versão não tem o recurso: o registro foi criado
   sem script. Avise o desenvolvedor, informe o que foi criado e não continue.
4. **Registros**: `POST /api/v1/models/{tabela}` para criar e
   `PUT /api/v1/models/{tabela}/{id}` para alterar (por exemplo, `ad_element`,
   `ad_column`, `ad_ref_list`, `ad_field`), sempre com `EntityType` `LBR`.
   **Callouts da interface não rodam pelo REST**: informe explicitamente os
   campos que a janela preencheria (nome, nome de impressão, referência,
   tamanho, elemento etc.). Compare com um registro parecido já existente.
5. **Processos**: `POST /api/v1/processes/{slug}` com `"record-id"` e
   `"table-id"` no corpo. O slug é o `Value` do processo em minúsculas, com
   espaço e pontuação trocados por `-` (`_` e `-` ficam). Os processos rodam
   com os mesmos cabeçalhos e também entram no script.

   | Processo | Slug | Registro |
   |---|---|---|
   | Sincronizar Coluna | `ad_column-sync` | `AD_Column_ID`, `"table-id": 101` |
   | Criar Colunas a partir do Banco de Dados | `ad_table_createcolumns` | `AD_Table_ID`, `"table-id": 100` |
   | Criar Campos (aba) | `ad_tab_createfields` | `AD_Tab_ID`, `"table-id": 106` |

6. **Planeje a sequência inteira antes da primeira requisição.** Erro,
   tentativa e erro e correção no meio do caminho também entram no script.
   Se algo falhar, pare, mostre ao desenvolvedor o trecho afetado e combine
   como seguir.
7. **Um comentário por script.** O nome do arquivo só tem o timestamp até o
   minuto: dois comentários diferentes no mesmo minuto caem no mesmo arquivo.

### 3.3. Pela interface (desenvolvedor)

Você explica, o desenvolvedor executa:

1. Entre como **System Administrator**, na empresa System.
2. Em **Preferência**:
   - **Manutenção do Dicionário** (`AdempiereSys`) **desligada**;
   - **Registrar Script de Migração** ligado;
   - **Comentário do Script de Migração**: descrição curta da mudança.
3. Crie ou altere os objetos do Passo 2 com EntityType `LBR`.
4. Use **Sincronizar Coluna** (ou *Criar Colunas a partir do Banco de Dados*,
   quando for o caso) para levar a mudança ao banco físico.

Espere o desenvolvedor dizer que terminou.

### 3.4. Levar o script para o LBR (os dois caminhos)

O iDempiere grava os scripts **na pasta de migração do core**, não na do LBR:

- em modo de desenvolvimento: `../idempiere/migration/iD<versão>/{postgresql,oracle}/`;
- fora dele: no diretório temporário do Java (`java.io.tmpdir`), em
  `migration/iD<versão>/…`.

O nome gerado é `yyyyMMddHHmm_PlaceholderForTicket.sql`, porque o iDempiere só
reconhece tickets `IDEMPIERE-####`. Quem gerou (você, no caminho REST, ou o
desenvolvedor):

1. **move** os dois arquivos para
   `org.idempierelbr.core/migration/iD<versão>/postgresql/` e `…/oracle/`. Não
   deixe sobras no clone do core;
2. **renomeia** os dois para `yyyyMMddHHmm_DescricaoCurta.sql`, mantendo o
   timestamp (ex.: `202609231541_RTCFisco.sql`);
3. **ajusta** a linha `SELECT register_migration_script('…')` dos dois para o
   nome novo.

### 3.5. Classes de modelo

Se tabelas ou colunas mudaram, gere de novo as classes de modelo com o
processo **Gerar Modelo** (*Generate Model*, janela *Tabela e Coluna*; pelo
REST, slug `generatemodel`) ou o `model.generator.launch` do core: EntityType
`LBR`, pacote `org.idempierelbr.<bundle>.model` e a pasta `src` do bundle dono
da tabela (ver `lbr-arquitetura` §4). O processo grava no disco do servidor:
pelo REST, só funciona com o servidor rodando sobre este repositório.

## Passo 4: revisar os scripts

Revise sempre, inclusive o que você mesmo gerou:

- **Os dois arquivos existem**, com o mesmo nome, em
  `org.idempierelbr.core/migration/iD<versão>/postgresql/` e `…/oracle/`. Oracle
  é obrigatório.
- Nome `yyyyMMddHHmm_DescricaoCurta.sql`, com timestamp maior que o do script
  mais novo da pasta.
- Linha 1: `-- <comentário>`. Linha 2: `SELECT register_migration_script('<nome do próprio arquivo>') FROM dual;`.
  Com o nome errado aqui, o SyncDB reaplica o script.
- O arquivo Oracle tem `SET SQLBLANKLINES ON` e `SET DEFINE OFF` depois do
  cabeçalho.
- **IDs literais na faixa 800000–809999.** `nextidfunc(...)` no script indica
  que o servidor de ID não estava em uso: gere de novo.
- **Sem colisão** de ID ou `_UU` com scripts que já estão na branch:
  ```bash
  grep -rn "<ID>" org.idempierelbr.core/migration/
  ```
- `EntityType='LBR'` nos registros de dicionário. `AD_Client_ID=0`, salvo
  intenção explícita.
- **Comandos que falharam também são registrados.** Procure duplicatas,
  tentativa e erro, mudanças desfeitas no mesmo script e registros alheios à
  tarefa. Mostre ao desenvolvedor e remova só com a aprovação dele.
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

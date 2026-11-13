# AGENTS.md — iDempiereLBR

Orientação para agentes de IA (Claude Code, Gemini CLI, Codex, OpenCode, …) que
trabalham no iDempiereLBR, a localização brasileira do iDempiere: bundles OSGi
(Java 17, Maven + Tycho, PostgreSQL e Oracle) que estendem o core **sem fork**,
com NF-e/NFC-e, MDF-e, NFS-e, recepção de DF-e, SPED EFD, boleto/CNAB e
IBS/CBS/IS.

A fonte de verdade para humanos é o [README.md](README.md). Se este arquivo e o
README discordarem, vale o README. Avise o desenvolvedor da divergência.

## Regras fixas (valem sempre)

1. **Nada de commit direto em `release-NN` ou `master`.** Trabalhe numa branch
   `tipo/descricao-curta` criada a partir da release em desenvolvimento (hoje
   `release-13`) e abra a PR contra ela. A `master` recebe a release por PR do
   mantenedor.
2. **Commits em Conventional Commits, em pt-BR, com o módulo como escopo**:
   `fix(nfe): …`, `feat(mdfe): …`. Um assunto por commit. Refatoração vai em
   commit separado da correção.
3. **Nunca escreva SQL de migração à mão nem invente IDs do dicionário.**
   Registros novos de `AD_*` são gravados pelo próprio iDempiere, com o servidor
   de ID do LBR e o log de migração ligado, e é ele que gera o par PostgreSQL +
   Oracle. O agente pode gerar pela **API REST**, quando o plugin REST com
   geração de script estiver instalado no servidor local. Sem ele, o
   desenvolvedor gera pela interface. Não invente `*_ID` nem `*_UU`. Ver
   `lbr-dicionario-migracoes`.
4. **Não altere o core do iDempiere a partir do LBR.** O LBR estende o core
   pelos pontos de extensão. Se a mudança só cabe no core, ela é uma
   contribuição para o iDempiere, com as regras de lá.
5. **LBR não é configuração de cliente.** No repositório entram código,
   dicionário e dados de System que refletem regra oficial. Configuração de
   tenant (Definição de Impostos, CFOP, cadastros) e dados de cliente ficam
   fora.
6. **Dados fiscais sensíveis nunca entram em commit, issue, PR ou teste**:
   certificado digital (`.pfx`/`.p12`) e sua senha, CSC, XML real de cliente,
   CNPJ/CPF/IE reais, chaves de acesso de clientes. Anonimize.
7. **SEFAZ e Receita só em homologação** (`tpAmb=2`). Não transmita nada em
   produção sem o desenvolvedor pedir.
8. **Credenciais nunca aparecem na saída.** Não imprima `idempiere.properties`,
   `idempiereEnv.properties`, senha ou token da API REST, nem o `Value` das
   SysConfig `*_PASSWORD` (inclusive `PROJECT_ID_PASSWORD`). Ao consultar
   `AD_SysConfig`, filtre essas chaves.
9. **Teste honesto.** Nunca diga que algo passou sem ter rodado. Diga o que foi e
   o que não foi verificado.
10. **Diffs mínimos e focados**, sem reformatação nem limpeza fora do escopo.
    Comentários, mensagens, commits, issues, PRs e documentação em pt-BR.
11. **Consulte o banco antes de afirmar** que uma tabela, coluna, lista de
    referência ou SysConfig existe. Não escreva de memória.

## Skills

As instruções por tarefa ficam em `.agents/skills/<nome>/SKILL.md`. Leia a skill
correspondente **antes** de começar.

`.claude/skills` é um symlink para `.agents/skills`. No Windows o git só cria
symlinks com eles habilitados (Developer Mode e `git config core.symlinks true`
antes do checkout). Sem isso o carregamento automático das skills pode falhar,
mas a tabela abaixo continua apontando para todas.

| Quando você está… | Leia |
|---|---|
| Começando qualquer tarefa no LBR, decidindo em que bundle algo entra, ou se a mudança é do LBR, do core ou do cliente | `.agents/skills/lbr-arquitetura/SKILL.md` |
| Compilando, criando um banco novo a partir do seed, sincronizando migrações, subindo o servidor | `.agents/skills/lbr-instalacao-build/SKILL.md` |
| Diante de uma mudança que precisa de tabela, coluna, janela, processo, lista, mensagem, SysConfig ou qualquer registro `AD_*` | `.agents/skills/lbr-dicionario-migracoes/SKILL.md` |
| Criando branch, escrevendo commit, abrindo ou atualizando PR | `.agents/skills/lbr-fluxo-contribuicao/SKILL.md` |
| Redigindo uma issue (bug ou funcionalidade) | `.agents/skills/lbr-issues/SKILL.md` |
| Escrevendo ou alterando código Java, XML fiscal, relatório Jasper ou manifesto OSGi | `.agents/skills/lbr-padroes-codigo/SKILL.md` |
| Escrevendo ou rodando testes (`org.idempierelbr.test`) | `.agents/skills/lbr-testes/SKILL.md` |
| Revisando uma PR ou o próprio diff antes de abrir uma | `.agents/skills/lbr-revisao-pr/SKILL.md` |

## Skills do iDempiere

O iDempiere publica skills próprias em `.agents/skills/` no repositório do core.
Se o clone do core usado no build (`../idempiere`, o mesmo de
`idempiere.core.repository.url` em
`org.idempierelbr.extensions.parent/pom.xml`) tiver essa pasta, **considere
também as skills de lá que tratam do mesmo assunto**, principalmente as de
padrões de código Java e de testes. Se a pasta não existir (por exemplo, com o
core numa branch anterior às skills), siga só as do LBR.

Elas foram escritas para o core. **Quando conflitarem com as do LBR, valem as do
LBR.** Os conflitos conhecidos:

| No iDempiere | No LBR |
|---|---|
| Ticket no Jira e prefixo `IDEMPIERE-####` em branch, commit e script | Issue do GitHub opcional, Conventional Commits, branch `tipo/descricao` |
| Branch a partir da `master` | Branch a partir da `release-NN` em desenvolvimento |
| Inglês obrigatório e cabeçalho GPLv2 em arquivo novo | pt-BR; siga o cabeçalho (ou a falta dele) do bundle |
| Scripts em `migration/` do core, IDs do servidor oficial, EntityType `D` | Scripts em `org.idempierelbr.core/migration/`, servidor de ID do LBR, EntityType `LBR` |
| O agente não gera scripts: só especifica e revisa | O agente pode gerar pela API REST, com o plugin REST instalado (ver `lbr-dicionario-migracoes` §3.2) |
| Testes em `org.idempiere.test`, todos contra GardenWorld | Testes em `org.idempierelbr.test`; só os `*IT` usam banco (GardenWorld, via `AbstractLBRTestCase`). Ver `lbr-testes` |

## Orientação no repositório

- `org.idempierelbr.base/`: modelo de dados (`X_*`/`I_*`/`M*`), usado por todos
  os outros bundles.
- `org.idempierelbr.core/`: validações, endereço, traduções pt_BR
  (`data/pt_BR`), **seed** (`data/seed/iDempiere_pg.jar`) e **migrações**
  (`migration/iD<versão>/{postgresql,oracle}`).
- `org.idempierelbr.tax/`, `nfe/`, `mdfe/`, `nfs/`, `rtc/`, `sped/`,
  `open-items/`, `cnab240*`: um bundle por área. Ver `lbr-arquitetura`.
- `org.idempierelbr.test/`: testes JUnit 5.
- `docs/sysconfig.md`: SysConfig próprias do LBR.
- `lbr.server.product.launch`: launch do Eclipse com os bundles do LBR.
- `pom.xml`: build Maven/Tycho. Compile com `mvn verify` (não há `mvnw`).

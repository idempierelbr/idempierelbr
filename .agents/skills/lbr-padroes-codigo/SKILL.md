---
name: lbr-padroes-codigo
description: Padrões de código do iDempiereLBR — acesso a dados e transação no estilo iDempiere, regras fiscais (XSD como fonte de verdade, listas de domínio no dicionário, NT citada), SysConfig, relatórios Jasper, manifestos OSGi e bibliotecas de terceiros. Use sempre que escrever ou alterar Java, XML fiscal, relatório (.jrxml/.jasper) ou MANIFEST.MF no LBR.
---

# Padrões de código do LBR

Se o clone do iDempiere tiver `.agents/skills/` com uma skill de padrões de
código (hoje `idempiere-core-coding-standards`), **considere-a também**: as
regras de acesso a dados, transação, segurança e compatibilidade de lá valem
para o LBR. Onde ela exigir inglês ou cabeçalho GPLv2 em arquivo novo, vale o
padrão do LBR (§5).

Antes de escrever, leia o código ao redor e siga o estilo do arquivo:
tabulação, chaves, nomes, densidade de comentários.

## 1. Acesso a dados e transação

O mesmo do iDempiere, em ordem de preferência:

1. **Classes de modelo** (`MLBR*`, `M*`), com os getters em cache quando
   existirem.
2. **`Query`**, com `setParameters`, `setClient_ID()`,
   `setOnlyActiveRecords(true)`, `setOrderBy`.
3. **`DB.*`** (`getSQLValueEx`, `executeUpdateEx`). Um `UPDATE` direto pula
   `beforeSave`, validadores e event handlers: use só quando for essa a
   intenção.
4. **JDBC** só quando nada acima serve, fechando com `DB.close(rs, pstmt)` no
   `finally`.

- Sempre parâmetros com `?`. Nunca concatene valor em SQL.
- Use `Table_Name` e `COLUMNNAME_*` das classes geradas, não literais.
- SQL que rode em **PostgreSQL e Oracle**.
- Propague o `trxName` até o fim. Não faça commit nem rollback de transação que
  não foi você que abriu. A exceção são processos que tratam cada item numa
  transação própria de propósito (por exemplo, importar uma nota por vez para
  que uma ruim não derrube o lote), e isso fica explícito no código.
- Use getters e setters do `X_*` regenerado. Nada de
  `get_ValueAsString("LBR_...")` para coluna que tem getter. Se o getter não
  existe, a coluna ainda não está no dicionário (ver
  `lbr-dicionario-migracoes`).

## 2. Regras fiscais

- **O XSD é a fonte de verdade** para estrutura, ordem, cardinalidade, tamanho
  e formato dos campos do XML. Os da NF-e ficam em
  `org.idempierelbr.nfe/src/org/idempierelbr/nfe/xsd/`. Na dúvida, consulte o
  XSD, não a memória.
- **Cite a regra no código** quando ela vier de NT, Informe Técnico, Ajuste
  SINIEF ou rejeição. Um comentário curto com a norma, a versão e o item basta
  (ex.: "Referência: NT 2025.002-RTC v1.33, regras de validação dos grupos…",
  "NT 2026.001 (CIOT, rejeição 684)").
- **Tabelas de domínio fiscal ficam no dicionário** (`AD_Ref_List` ou tabela
  própria), não hardcoded em Java. Hardcode só quando o código implementa uma
  regra fixa do leiaute que não muda por configuração.
- **Valor monetário** em `BigDecimal`, com escala e arredondamento explícitos,
  conforme o leiaute (em geral 2 casas para valores e até 4 para alíquotas e
  quantidades; confirme no XSD).
- **Data e hora** no fuso da UF/organização, como o leiaute pede.
- **Ambiente**: o código de transmissão respeita o ambiente configurado e nunca
  força produção.
- **Regra de cliente fica no cliente.** Comportamento que varia por empresa vai
  para configuração (SysConfig, Tipo de Documento, Definição de Impostos), não
  para `if` com CNPJ ou ID de organização.

## 3. SysConfig

- Prefixo `LBR_` no nome.
- Leia com `MSysConfig.getValue/getBooleanValue/getIntValue(nome, padrão, AD_Client_ID, AD_Org_ID)`
  no nível em que ela é configurável.
- O padrão no código preserva o comportamento atual: mudança de comportamento
  entra opcional.
- O registro da SysConfig é dicionário (ver `lbr-dicionario-migracoes`), e a
  documentação vai para `docs/sysconfig.md` na mesma PR.

## 4. Relatórios Jasper (DANFE, DAMDFE, boleto)

- O que roda é o **`.jasper` compilado**, não o `.jrxml`. Toda mudança no
  `.jrxml` exige recompilar e versionar o `.jasper` junto, com a mesma versão do
  JasperReports do target platform do iDempiere.
- Um anexo `.jasper` no processo (`AD_Process`) tem precedência sobre o do
  bundle. Lembre disso ao testar uma mudança que "não aparece".
- Fontes vêm do fragmento `org.idempierelbr.jasperfonts`.

## 5. Estilo e qualidade

- **Comentários, mensagens ao usuário, logs voltados ao usuário: pt-BR.**
  Identificadores seguem o padrão do arquivo.
- Mensagens ao usuário: siga o padrão do bundle (`Msg.getMsg` com
  `AD_Message`, ou texto direto em pt-BR, como boa parte do código atual).
  Mensagem nova em `AD_Message` é dicionário.
- Erros com `AdempiereException` e mensagem que diga ao usuário **o que fazer**,
  não só o que falhou.
- Log com `CLogger` no nível certo. Sem `System.out` nem `printStackTrace` em
  código de produção.
- **Nunca registre em log** senha de certificado, CSC, tokens ou o XML assinado
  inteiro com dados de cliente em nível alto.
- Arquivo novo: siga o cabeçalho dos arquivos vizinhos do mesmo bundle. Classes
  trazidas de outros projetos mantêm o cabeçalho e os autores originais.
- Sem warnings novos e sem imports não usados.
- Diff mínimo: sem reformatar linhas intocadas, sem renomear o que não é da
  tarefa.

## 6. OSGi, manifestos e bibliotecas

- Import novo de outro bundle pode exigir `Require-Bundle` ou `Import-Package`
  no `MANIFEST.MF`. Respeite a direção das dependências (`lbr-arquitetura` §3).
- Componente novo (`IProcessFactory`, `IColumnCalloutFactory` etc.) precisa do
  XML em `OSGI-INF/`. Confira se o `Service-Component` do manifesto já o cobre:
  a maioria dos bundles usa `OSGI-INF/*.xml`, mas alguns listam os arquivos um a
  um.
- **Biblioteca de terceiros nova** afeta o target platform e a licença:
  discuta com o desenvolvedor antes. Jars em `lib/` entram no
  `Bundle-ClassPath` e, quando não vêm do Maven, pelo `local-maven-repo` (ver
  `HowToBuild.txt`).

## 7. Compatibilidade

- Outros bundles do LBR e plugins de clientes dependem das classes públicas do
  LBR. Prefira sobrecarga a mudar ou remover assinatura pública ou protegida.
  Deprecie com `@Deprecated` e javadoc apontando a substituta.
- Colunas que parecem "sem uso" podem ser usadas por clientes: não remova nem
  mude o significado.
- Mudança de comportamento padrão precisa de motivo forte. Prefira opt-in por
  SysConfig.

## 8. Análise de impacto

Antes de dar a mudança por pronta, mesmo que seja uma linha:

1. Procure todos os chamadores do que mudou, em todos os bundles do LBR.
2. Pergunte se o comportamento muda para outros documentos (NF-e × NFC-e,
   entrada × saída, devolução, complementar, débito/crédito), outros regimes
   (Simples × normal), outras UFs, contingência, Oracle.
3. Liste os cenários afetados na PR (ver `lbr-fluxo-contribuicao` §5).

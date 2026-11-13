---
name: lbr-revisao-pr
description: Revisar pull requests do iDempiereLBR ou o próprio diff antes de abrir uma, com o checklist do projeto — escopo, regras fiscais contra NT/XSD, migrações (par PostgreSQL/Oracle, IDs na faixa do LBR, sem colisão), LBR × cliente, dados sensíveis, manifestos, testes e impacto colateral. Use quando pedirem para revisar uma PR, testar a mudança de outra pessoa ou autorrevisar antes do push.
---

# Revisão de pull request

Se o clone do iDempiere tiver `.agents/skills/` com uma skill de revisão (hoje
`idempiere-pr-review`), considere as técnicas de lá (portões de verificação,
relatório honesto). O checklist e os comandos abaixo são os do LBR.

Toda revisão responde a duas perguntas:

1. O código está bem escrito, sem efeito colateral nem problema de segurança?
2. Ele faz o que diz, e só isso?

## 1. Entender a mudança

```bash
gh pr view <número> --repo idempierelbr/idempierelbr
gh pr diff <número> --repo idempierelbr/idempierelbr
# ou, para autorrevisão:
git diff release-13...HEAD --stat
git diff release-13...HEAD
```

- Leia a descrição e a issue citada, se houver.
- A PR aponta para a `release-NN` em desenvolvimento, não para a `master`?
- O escopo bate com o título? Aponte mudanças sem relação e refatoração
  misturada com correção.

## 2. Checklist

### Regra fiscal
- [ ] A regra implementada confere com a norma citada (NT, IT, Ajuste SINIEF) e
  com o XSD: campo, ordem, cardinalidade, tamanho, formato.
- [ ] Os casos de rejeição da norma são tratados, ou a PR diz por que não.
- [ ] Valores com `BigDecimal`, escala e arredondamento corretos.
- [ ] Nenhuma tabela de domínio nova hardcoded quando deveria estar no
  dicionário.

### Dicionário e migrações (se houver)
- [ ] Par **PostgreSQL + Oracle** em `org.idempierelbr.core/migration/iD<versão>/`,
  com o mesmo nome.
- [ ] Nome `yyyyMMddHHmm_DescricaoCurta.sql`, timestamp maior que o do script
  mais novo da pasta na branch de destino.
- [ ] `register_migration_script('…')` com o nome do próprio arquivo, nos dois.
- [ ] IDs literais na faixa **800000–809999**, sem `nextidfunc`.
- [ ] Sem colisão de ID ou `_UU` com a branch de destino:
  ```bash
  git fetch origin release-13     # num fork, use o remote do idempierelbr (upstream)
  for id in $(grep -ohE "\b80[0-9]{4}\b" <scripts da PR> | sort -u); do
    git grep -lw "$id" origin/release-13 -- org.idempierelbr.core/migration/
  done
  ```
  Um ID que aparece em script já existente pode ser só referência (FK, UPDATE).
  Confira se é `INSERT` do mesmo registro.
- [ ] `EntityType='LBR'`, `AD_Client_ID=0` no dicionário.
- [ ] Sem comandos que falharam, tentativa e erro ou registros alheios à tarefa.
- [ ] Classes `X_*`/`I_*` regeneradas junto com a mudança de colunas, sem
  edição à mão.
- Detalhes em `lbr-dicionario-migracoes` §4.

### LBR × cliente
- [ ] Nada de configuração de tenant nem dado de cliente (Definição de
  Impostos, CFOP, cadastros, SysConfig com valor do cliente).
- [ ] Nenhum `if` por CNPJ, ID de organização ou nome de cliente.

### Dados sensíveis
- [ ] Nenhum certificado, senha, CSC, token, `idempiere.properties`.
- [ ] Nenhum XML, CNPJ/CPF/IE, nome ou chave de acesso real de cliente, nem nos
  testes.
- [ ] Logs novos não expõem senha, token ou XML com dados de cliente.

### Código
- [ ] Acesso a dados na ordem modelo → `Query` → `DB` → JDBC, com parâmetros
  `?` e recursos fechados.
- [ ] `trxName` propagado, sem commit em transação alheia.
- [ ] SQL compatível com PostgreSQL e Oracle.
- [ ] Getters e constantes do `X_*` em vez de `get_Value("...")`.
- [ ] Assinatura pública ou protegida mantida (sobrecarga em vez de mudança).
- [ ] Comentários e mensagens em pt-BR, sem warnings novos.

### Build, OSGi e recursos
- [ ] `MANIFEST.MF` com os `Require-Bundle`/`Import-Package` necessários, sem
  dependência "para cima" (`lbr-arquitetura` §3).
- [ ] Componente novo registrado em `OSGI-INF/` e coberto pelo
  `Service-Component`.
- [ ] Bundle novo no `pom.xml`, no `category.xml` do p2, na `feature.xml` e
  no `lbr.server.product.launch`.
- [ ] `.jrxml` alterado vem com o `.jasper` recompilado.
- [ ] Biblioteca nova discutida e com licença compatível.

### Documentação
- [ ] SysConfig nova ou alterada registrada em `docs/sysconfig.md`.
- [ ] README atualizado se a mudança é visível ou altera a instalação.

### Testes e impacto
- [ ] Teste para a regra nova ou para a correção, quando possível
  (`lbr-testes`).
- [ ] Chamadores dos métodos alterados conferidos em todos os bundles.
- [ ] Impacto em outros documentos, modelos, regimes, UFs e contingência
  considerado (`lbr-padroes-codigo` §8).

## 3. Verificação local, em portões

Rode do mais barato para o mais caro. Só passe ao próximo portão se o anterior
passou. Se não passou, relate (§4) e pare.

### Portão 1: leitura
As seções 1 e 2. Pare se houver problema bloqueante.

### Portão 2: build e testes
Faça checkout da PR numa branch descartável, com a árvore de trabalho limpa:

```bash
git fetch origin release-13
git switch --no-track -c review-pr-<número> origin/release-13
git fetch origin pull/<número>/head
git merge --no-ff FETCH_HEAD
```

Assim você testa o código como ficaria depois do merge. Se o merge não for
limpo, relate.

1. Se a PR traz scripts, aplique com o SyncDB num banco descartável (ver
   `lbr-instalacao-build` §3). **Isso altera o banco: avise antes.**
2. `mvn clean verify`. Use `clean` ao trocar de PR: sobras em `target/`
   escondem erros.
3. Pare se o build ou algum teste falhar. Diga se o teste também falha na
   `release-13`.

### Portão 3: aplicação
Só depois dos portões 1 e 2:

1. Teste o cenário da PR no servidor rodando. SEFAZ só em homologação.
2. Teste além do caminho feliz e as áreas vizinhas que podem ser afetadas. O
   sistema deve se comportar exatamente como antes, fora a mudança pretendida.

### Limpeza

```bash
git switch release-13
git branch -D review-pr-<número>
```

Se você fez commits na branch de revisão (por exemplo, uma correção sugerida
ao autor), guarde-os antes e confirme com o desenvolvedor.

## 4. Relatório

Escreva um relatório que o desenvolvedor possa postar na PR (postar é decisão
dele):

- **O que foi revisado**: arquivos, commits.
- **O que foi testado**: cenários, banco, ambiente, comandos.
- **O que funcionou.**
- **O que falhou ou preocupa**: cada item com `arquivo:linha`, um cenário
  concreto de falha e a correção sugerida, quando houver.
- **O que não foi testado.** Com toda a honestidade.

Ordene por gravidade: regra fiscal errada, dados sensíveis, corretude,
migração e compatibilidade primeiro; estilo por último. Não aponte formatação
que o projeto não exige.

## Autorrevisão antes da PR

Rode as seções 1 e 2 sobre `git diff release-13...HEAD` e confira se a
descrição da PR cobre o que `lbr-fluxo-contribuicao` §5 pede.

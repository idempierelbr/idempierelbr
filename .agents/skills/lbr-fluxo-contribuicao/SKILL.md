---
name: lbr-fluxo-contribuicao
description: Fluxo de git e pull request do iDempiereLBR — fork, branch a partir da release em desenvolvimento, Conventional Commits em pt-BR com escopo de módulo, issue do GitHub opcional, PR contra a release-NN, resposta a revisão. Use ao começar uma tarefa, criar branch, escrever mensagem de commit, sincronizar com o upstream, abrir ou atualizar PR.
---

# Fluxo de contribuição do LBR

Repositório: https://github.com/idempierelbr/idempierelbr

Se o clone do iDempiere tiver `.agents/skills/` com uma skill de fluxo de
contribuição (hoje `idempiere-contribution-workflow`), **não a siga para o
LBR**: Jira, `IDEMPIERE-####` e branch a partir da `master` são regras do core.
Use-a só se a tarefa for uma contribuição para o próprio iDempiere.

## 1. Antes de codificar

- **Issue é opcional.** Se existir, anote o número para citar na PR. Se o
  desenvolvedor quiser abrir uma, ver `lbr-issues`. Não invente número de
  issue.
- Descubra a release em desenvolvimento (hoje `release-13`; ver a tabela
  *Compatibilidade* do README). É dela que sai a branch e para ela vai a PR.
- Confira os remotes. Quem não é mantenedor trabalha num fork: `origin` aponta
  para o fork e `upstream` para `https://github.com/idempierelbr/idempierelbr.git`.
  ```bash
  git remote -v
  ```
- Atualize a release a partir do upstream:
  ```bash
  git switch release-13
  git pull --ff-only upstream release-13   # ou origin, se for o próprio repo
  ```
  Se o fast-forward falhar, a release local tem commits próprios. Pare e avise
  o desenvolvedor em vez de fazer merge.
- Se o pull trouxe scripts novos em `org.idempierelbr.core/migration/`, sugira
  rodar o SyncDB (ver `lbr-instalacao-build` §3).
- Se a tarefa precisa de dicionário, leia `lbr-dicionario-migracoes` **antes**
  de codificar.

## 2. Branch

```bash
git switch -c fix/sped-apuracao-nfe-autorizada release-13
```

- Formato `tipo/descricao-curta`, em minúsculas com hífens. Tipos: `feat`,
  `fix`, `refactor`, `test`, `docs`, `chore`.
- Uma branch por assunto. Nunca commite direto em `release-NN` ou `master`.

## 3. Commit

Conventional Commits, **em pt-BR**, com o módulo como escopo:

```
fix(nfe): cEANTrib igual ao cEAN quando a unidade tributável é a comercial
feat(mdfe): exige o CIOT conforme a NT MDF-e 2026.001 (rejeição 684)
test(mdfe): testes adversariais do CIOT, do formulário e da janela
```

- Escopo = bundle sem o prefixo: `nfe`, `mdfe`, `nfs`, `rtc`, `sped`, `tax`,
  `core`, `base`, `open-items`, `cnab240`, `test`, `migration`. Sem escopo
  quando a mudança é transversal.
- A descrição diz **o que muda para quem usa**, não como foi feito. Cite a NT,
  o Informe Técnico ou a rejeição (`cStat`) quando for o motivo.
- O corpo explica o porquê quando não for óbvio. Se houver issue, use
  `Closes #N` ou `Refs #N`.
- Um assunto por commit. Refatoração em commit separado da correção.
- Faça stage só do que pretendia mudar. Confira `git status` e
  `git diff --staged` atrás de arquivos estranhos: `idempiere.properties`,
  `.classpath`, `target/`, `lib/*.jar` copiados pelo build, logs, configuração
  da IDE, XML ou certificado de teste.
- Scripts de migração vão no mesmo commit ou PR que o código que depende deles.

## 4. Antes do push: autorrevisão

Rode o checklist de `lbr-revisao-pr` sobre o próprio diff. No mínimo:

- `mvn verify` passa (ver `lbr-instalacao-build`).
- Testes existentes passam. Lógica nova ou correção tem teste quando dá (ver
  `lbr-testes`).
- Se houver dicionário: par PostgreSQL + Oracle presente e revisado (ver
  `lbr-dicionario-migracoes` §4).
- Nenhum dado sensível de cliente no diff.

## 5. Push e pull request

```bash
git push -u origin fix/sped-apuracao-nfe-autorizada
```

PR contra **`idempierelbr/idempierelbr`, branch `release-NN`** (hoje
`release-13`), nunca contra a `master`.

Título no mesmo formato do commit principal. Corpo em pt-BR:

- **Contexto**: o problema ou a necessidade e, se houver, `Closes #N`. Cite a
  legislação (NT, IT, Ajuste SINIEF) e a vigência quando for o motivo.
- **O que muda**: comportamento novo, do ponto de vista de quem usa.
- **Dicionário**: os scripts incluídos e o que eles criam ou alteram, para quem
  revisa reproduzir.
- **Configuração**: SysConfig nova (e o registro em `docs/sysconfig.md`) ou o
  que o cliente precisa configurar para usar.
- **Como foi testado**: comandos, testes, ambiente (homologação), UF/autorizador
  quando relevante. **Diga com honestidade o que não foi testado.**
- **Impacto colateral**: outros documentos, modelos (55/65), bundles ou fluxos
  que podem ser afetados.

Abrir PR é uma ação pública: escreva o corpo num arquivo, mostre ao
desenvolvedor e só então rode `gh pr create`, com a confirmação dele.

## 6. Documentação

Atualize na mesma PR:

- `docs/sysconfig.md` para SysConfig nova ou alterada;
- o `README.md` quando a mudança acrescenta funcionalidade visível ou muda a
  instalação.

## 7. Revisão

- Avalie cada comentário de revisão pelo mérito: aplique os válidos e responda
  com argumentos aos que não se aplicam.
- Mande as correções como commits novos na mesma branch.
- Não faça force-push nem reescreva histórico publicado sem o desenvolvedor
  pedir.
- Não abra, feche nem comente PR ou issue sem a confirmação do desenvolvedor.

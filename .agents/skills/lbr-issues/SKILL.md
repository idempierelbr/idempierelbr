---
name: lbr-issues
description: Redigir issues do iDempiereLBR no GitHub (relato de bug e pedido de funcionalidade), com os dados que um problema fiscal precisa — versão, UF/autorizador, modelo, ambiente, cStat/xMotivo, XML anonimizado, NT de referência — e decidir se o assunto é do LBR, do core do iDempiere ou da configuração do cliente. Use quando o desenvolvedor quiser abrir uma issue ou melhorar a descrição de uma.
---

# Issues no GitHub

Repositório: https://github.com/idempierelbr/idempierelbr/issues

No LBR, a issue fica **no próprio GitHub do projeto**, não no Jira do
iDempiere. Ela é **opcional**: uma PR pode existir sem issue. Vale a pena abrir
quando o problema precisa de discussão, quando quem relata não vai corrigir, ou
quando a mudança é grande o bastante para combinar a abordagem antes.

Você **redige** o texto. Quem publica é o desenvolvedor. Não crie issue nem
invente número de issue. Se o desenvolvedor pedir para você publicar com
`gh issue create`, mostre o texto antes e espere a confirmação.

## Antes de redigir

- **É do LBR?** Se o problema acontece num iDempiere sem o LBR, é do core: a
  issue vai para o Jira do iDempiere (`IDEMPIERE-####`), com as regras de lá.
  Se for configuração do cliente (Definição de Impostos, CFOP, cadastro), não
  é issue: é suporte.
- Reproduza na última versão da release em desenvolvimento (hoje
  `release-13`).
- Procure issues abertas e fechadas sobre o mesmo assunto. Se uma fechada
  bater, a nova cita a antiga.

## Dados sensíveis: anonimize antes

Issue é pública e indexada. **Nunca** inclua:

- certificado digital, senha de certificado, CSC, token ou senha de web service;
- XML real de cliente sem anonimizar. Troque CNPJ/CPF/IE, nomes, endereços,
  e-mails, telefones e a chave de acesso (e recalcule o DV, se o XML precisar
  continuar válido);
- `idempiere.properties`, strings de conexão, IPs internos;
- dados financeiros reais do cliente.

Na dúvida, descreva o grupo do XML em vez de colar o XML inteiro.

## Relato de bug

**Título**: preciso e buscável. Diz o que está errado e em que condição.

- Fraco: `Erro na NF-e`
- Bom: `NF-e de devolução sem o grupo ICMSUFDest quando o destinatário é não contribuinte`
- Bom: `Rejeição 684 no MDF-e rodoviário com CIOT informado no contratante`

**Descrição**:

```text
Versão do LBR: <branch e commit (git rev-parse --short HEAD)>
Versão do iDempiere: <branch/versão>
Banco: PostgreSQL <versão> | Oracle <versão>
Documento: NF-e 55 | NFC-e 65 | MDF-e 58 | NFS-e | CNAB <banco> | SPED <EFD>
UF / autorizador: <ex.: SP / SEFAZ SP; SVRS; SVC-AN>
Ambiente: homologação | produção

Passos para reproduzir:
1. <uma ação por passo, com valores concretos: "Abrir a janela Nota Fiscal">
2. <...>
3. Observar que <o problema>

Resultado esperado:
<o que deveria acontecer, citando a regra (NT, IT, Manual de Orientação) quando houver>

Resultado obtido:
<o que acontece; para rejeição, cStat e xMotivo exatos>

Informações adicionais:
<trecho anonimizado do XML ou do log, stack trace, desde quando acontece,
 versão em que funcionava>
```

Regras: seja específico (valores, nomes de janela e de campo), uma ação por
passo, termine com uma observação explícita. Para rejeição da SEFAZ, o `cStat`
e o `xMotivo` exatos são obrigatórios. Para erro de cálculo, mostre base,
alíquota e valor esperados e obtidos.

## Pedido de funcionalidade

1. **Problema**: o comportamento atual e por que não basta (problema primeiro,
   solução depois).
2. **Base legal**: NT, Informe Técnico, Ajuste SINIEF, lei ou leiaute que
   motiva o pedido, com **data de vigência** e de obrigatoriedade em homologação
   e produção.
3. **Proposta**: o comportamento novo, passo a passo, com exemplos concretos.
4. **Quem se beneficia**: por que vale para vários usuários do LBR, e não só
   para um cliente.
5. **Áreas afetadas**: bundles, dicionário, cálculo de impostos, XML,
   relatórios (DANFE etc.), SPED, contabilização.
6. **Impacto**: compatibilidade, migração, o que o cliente precisa configurar.
7. **Alternativas consideradas**, e por que esta é a preferida.
8. **LBR ou configuração?** Se a necessidade se resolve com configuração (por
   exemplo, Definição de Impostos ou SysConfig existente), diga isso em vez de
   pedir código.

## Depois que a issue existe

Siga `lbr-fluxo-contribuicao`: branch a partir da release, commits em
Conventional Commits e `Closes #N` no corpo da PR.

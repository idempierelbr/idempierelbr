---
name: lbr-testes
description: Escrever e rodar testes do iDempiereLBR no bundle org.idempierelbr.test (JUnit 5 + Tycho) — *Test.java sem banco no mvn verify, *IT.java com Adempiere.startup no Eclipse, *E2ETest.java contra a SEFAZ em homologação. Use ao acrescentar teste para correção ou funcionalidade, escolher o tipo de teste, ou rodar um teste ou a suíte.
---

# Testes do LBR

Se o clone do iDempiere tiver `.agents/skills/` com uma skill de testes (hoje
`idempiere-unit-tests`), considere-a para as técnicas gerais (Mockito em
getters estáticos, asserts com mensagem, testes determinísticos). A estrutura
abaixo é a do LBR: bundle, sufixos e forma de rodar são outros.

Os testes ficam em `org.idempierelbr.test/src/org/idempierelbr/<área>/test/`
(`nfe`, `mdfe`, `rtc`, `sped`…).

## 1. Três tipos, pelo sufixo

| Sufixo | O que testa | Precisa de | Onde roda |
|---|---|---|---|
| `*Test.java` | Lógica pura: parser de XML, regras de NT, ordem de elementos, filtros, utilitários | nada | `mvn verify` (Tycho surefire, JUnit 5) |
| `*IT.java` | Integração: modelo, janela, processo, certificado | `Adempiere.startup`, banco configurado | Eclipse, launch `org.idempierelbr.test/org.idempierelbr.test.launch` |
| `*E2ETest.java` | Ponta a ponta contra a SEFAZ | credenciais e certificado de **homologação** | manual; excluído do `mvn verify` no `pom.xml` do bundle |

Prefira `*Test.java`: separe a regra fiscal da persistência para conseguir
testá-la sem banco. Use `*IT.java` só quando o comportamento depende de fato do
dicionário, de um PO ou de um processo.

## 2. Quando é esperado teste

- **Correção de bug**: um teste que falha antes e passa depois, sempre que a
  lógica puder ser exercitada sem a interface.
- **Regra fiscal nova** (validação de NT, cálculo de imposto, montagem de grupo
  do XML): teste com os casos da norma, inclusive os de rejeição.
- Mudança só de tela (ZK): descreva o teste manual na PR.
- Todos os testes existentes continuam passando antes da PR.

## 3. Como escrever

- JUnit 5 e AssertJ (`assertThat`), como os testes atuais.
- Prefira acrescentar um método numa classe de teste que já cobre o mesmo
  assunto. Classe nova: `<Assunto>Test` ou `<Assunto>IT`.
- `*IT.java` que precisam de contexto estendem `AbstractLBRTestCase`, que
  estende o `AbstractTestCase` do iDempiere: login em **GardenWorld** e uma
  transação desfeita ao fim de cada teste (`getTrxName()`). Passe o
  `getTrxName()` para todo construtor de modelo, `Query` e `DB`. Não deixe dados
  para trás.
- Não altere registros compartilhados do banco (SysConfig, informações da
  empresa, produtos) para montar cenário. Crie registros novos na transação do
  teste ou use Mockito em getters estáticos (`MSysConfig` e afins).
- Testes determinísticos: data fixa, nada que dependa de ordem de execução ou
  do relógio.
- Asserts específicos e com mensagem que explique o porquê.
- Entrada hostil é bem-vinda em parsers e formulários (ver `HostileInput`).

### Dados de teste

- **Nada de dado real de cliente**: CNPJ/CPF/IE, nomes, endereços, chaves de
  acesso. Use CNPJ/CPF válidos gerados para teste e XMLs sintéticos ou
  anonimizados.
- **Nada de certificado ou senha no repositório.** Testes que precisam de
  certificado leem o caminho e a senha de variável de ambiente ou propriedade
  do sistema e são pulados (`Assumptions`) quando elas faltam.
- SEFAZ, Receita e demais serviços externos: **só homologação**.
- IDs de registros existentes vêm do banco, consultados de verdade. Nunca
  invente ID.

## 4. Rodar

```bash
# compila tudo e roda todos os *Test.java
mvn verify

# uma classe ou um método (Tycho surefire aceita -Dtest)
mvn verify -Dtest=NFeXMLParserTest
mvn verify -Dtest='NFeXMLParserTest#<metodo>'
```

- Resultados em `org.idempierelbr.test/target/surefire-reports/`.
- `*IT.java`: no Eclipse, abra `org.idempierelbr.test/org.idempierelbr.test.launch`
  → *Run As*. O launch resolve o `IDEMPIERE_HOME` por
  `${project_loc:org.adempiere.base}/..`, então precisa do `org.adempiere.base`
  no workspace e de um `idempiere.properties` apontando para um banco com as
  migrações em dia (ver `lbr-instalacao-build` §3). Mantenha
  `automaticAdd`/`automaticIncludeRequirements` ligados em launches novos.

## 5. Relatar

Na PR, liste os testes acrescentados ou alterados, o comando usado e o
resultado. Se um `*IT.java` ou `*E2ETest.java` relevante não rodou, diga. Se um
teste já falhava antes da sua mudança, diga também. **Nunca informe teste como
aprovado sem ter rodado.**

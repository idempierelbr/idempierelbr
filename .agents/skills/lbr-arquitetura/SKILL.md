---
name: lbr-arquitetura
description: Como o iDempiereLBR se relaciona com o iDempiere — bundles OSGi que estendem o core sem fork, pontos de extensão usados, dependências entre bundles, versão do iDempiere por branch, onde ficam modelo, migrações, seed, traduções, XSD e relatórios. Use ao começar qualquer tarefa no LBR, ao decidir em que bundle uma mudança entra, se ela é do LBR, do core ou da configuração do cliente, ou ao criar um bundle novo.
---

# Arquitetura do LBR em relação ao iDempiere

Referência: [README.md](../../../README.md) (seções *Módulos*, *Compatibilidade*
e *Instalação*).

## 1. O LBR não é fork

O LBR é um conjunto de bundles OSGi instalados ao lado do iDempiere. Ele não
altera nenhum arquivo do core: tudo entra pelos pontos de extensão oficiais.
Atualizar o iDempiere não exige merge de localização.

Consequência prática: **se uma mudança só é possível alterando o core, ela não
entra no LBR.** Ela vira uma contribuição para o iDempiere, com as regras de lá
(Jira, `IDEMPIERE-####`, skills do core). Antes disso, procure um ponto de
extensão que resolva.

Pontos de extensão que o LBR usa hoje (declarados em `OSGI-INF/*.xml` de cada
bundle, ou no `Activator`):

| Serviço | Para quê | Onde |
|---|---|---|
| `Core.getMappedModelFactory().scan(...)` no `Activator` | Registrar as classes de modelo | `base`, `mdfe` |
| `IModelFactory` | Idem, forma antiga | `sped` |
| `ITaxProviderFactory` | Motor de impostos brasileiro | `tax` |
| `IDocFactory` | Contabilização (`Doc_NotaFiscal` e outros) | `tax`, `nfe`, `nfs`, `open-items` |
| `IProcessFactory`, `IColumnCalloutFactory`, `IFormFactory` | Processos, callouts, formulários ZK | vários |
| `IEditorFactory`, `ILookupFactory`, `IDisplayTypeFactory` | Editores e tipos de exibição próprios | `core`, `tax` |
| Event handlers (`EventHandler`) | Regras em eventos de documento/PO | `core`, `nfe`, `nfs` |
| `IBankCollectionFactory` (do próprio LBR) | Layout CNAB por banco | `cnab240.*` |

Confira o estado atual com:

```bash
grep -rho '<provide interface="[^"]*"' org.idempierelbr.*/OSGI-INF/*.xml | sort | uniq -c
```

## 2. Versão do iDempiere

Cada branch do LBR acompanha uma versão do iDempiere (tabela *Compatibilidade*
do README). Hoje a `release-13` está em desenvolvimento ativo e a `master`
recebe a release por PR.

O build resolve o core pelo repositório p2 do clone do iDempiere ao lado:

```
sources/
├── idempiere/      # mesma versão da branch do LBR, já compilado
└── idempierelbr/
```

O caminho fica em `idempiere.core.repository.url`, no
`org.idempierelbr.extensions.parent/pom.xml`. Ver `lbr-instalacao-build`.

## 3. Bundles e dependências

Dependências entre bundles do LBR (`Require-Bundle` dos `MANIFEST.MF`):

| Bundle | Depende de |
|---|---|
| `base` | (nenhum do LBR) — modelo de dados de todos |
| `core` | `base` |
| `tax` | `base`, `core` |
| `nfe` | `base`, `core`, `tax` |
| `mdfe` | `base`, `core`, `nfe` |
| `nfs` | `base`, `core`, `tax` |
| `rtc` | `base`, `core` |
| `sped` | `base` |
| `open-items` | `base`, `core`, `nfe`, `cnab240` |
| `cnab240` | (nenhum) — contrato dos layouts |
| `cnab240.<banco>` | `base`, e conforme o banco `cnab240`, `core`, `open-items` |
| `jasperfonts` | fragmento de `net.sf.jasperreports.engine` |
| `test` | `base`, `nfe`, `mdfe`, `rtc`, `sped` |

Regras:

- Uma dependência nunca aponta "para cima" (por exemplo, `base` não pode
  depender de `nfe`). Se precisar, a classe está no bundle errado.
- Dependência nova entre bundles muda o `MANIFEST.MF`. Justifique na PR.
- Antes de afirmar uma dependência, confira o manifesto: esta tabela pode estar
  desatualizada.

## 4. Dicionário de dados

- EntityType **`LBR`** em todo registro de dicionário do LBR.
- Tabelas e colunas novas com prefixo **`LBR_`**.
- Classes geradas (`X_*`, `I_*`) ficam no pacote `model` do bundle dono da
  tabela: a maioria em `org.idempierelbr.base/src/org/idempierelbr/base/model`,
  e também `mdfe/model` e `sped/model`. Nunca edite essas classes à mão.
- IDs novos vêm do servidor de ID do LBR, na faixa 800000–809999. IDs
  1000000+ são registros legados: servem como referência, nunca como ID novo.
- Todo o fluxo está em `lbr-dicionario-migracoes`.

## 5. Onde ficam as coisas

| O quê | Onde |
|---|---|
| Migrações | `org.idempierelbr.core/migration/iD<versão>/{postgresql,oracle}/` |
| Seed (banco inicial com o LBR aplicado) | `org.idempierelbr.core/data/seed/iDempiere_pg.jar` |
| Traduções pt_BR | `org.idempierelbr.core/data/pt_BR/` |
| Plano de contas | `org.idempierelbr.core/data/import/AccountingBR.csv` |
| Views (ddlutils) | `org.idempierelbr.core/db/ddlutils/{postgresql,oracle}/` |
| XSD da NF-e | `org.idempierelbr.nfe/src/org/idempierelbr/nfe/xsd/` |
| DANFE (`.jrxml` + `.jasper`) | `org.idempierelbr.nfe/src/org/idempierelbr/nfe/report/` |
| SysConfig do LBR (documentação) | `docs/sysconfig.md` |
| Bundles do build e do p2 | `pom.xml`, `org.idempierelbr.extensions.p2/category.xml`, `org.idempierelbr.extensions.feature/feature.xml` |
| Launch do Eclipse | `lbr.server.product.launch`, `org.idempierelbr.test/org.idempierelbr.test.launch` |

## 6. LBR, core ou cliente?

O LBR é open source e usado por vários clientes. Antes de propor uma mudança,
classifique cada item:

| Vai para | Exemplos |
|---|---|
| **Core do iDempiere** | Bug ou melhoria que vale para qualquer país, ou que só cabe alterando o core |
| **LBR** | Código; dicionário (tabelas, janelas, processos); dados de System que refletem regra oficial, como fórmulas de imposto (`LBR_Formula`), listas de domínio de NT, tabelas de CST/cClassTrib |
| **Configuração do cliente** | Definição de Impostos, impostos da organização, linhas de CFOP, cadastro de produto/NCM, Tipo de Documento, certificados, SysConfig com valor do cliente |

Em planos e listas de mudanças, rotule cada item como **LBR** ou **Cliente**. O
banco de referência para o que é LBR é um banco criado a partir do seed, não o
banco de um cliente, que pode ter customizações.

## 7. Bundle novo

1. Crie a pasta no padrão dos demais (`org.idempierelbr.<area>`), com
   `META-INF/MANIFEST.MF`, `build.properties` e `pom.xml` (parent
   `org.idempierelbr.extensions.parent`).
2. Registre os modelos com `Core.getMappedModelFactory().scan(context, "<pacote>.model")`
   num `Activator` (padrão de `base` e `mdfe`).
3. Acrescente o módulo no `pom.xml` da raiz, o bundle em
   `org.idempierelbr.extensions.p2/category.xml` (é o que põe o jar no p2 de
   produção) e o plugin em `org.idempierelbr.extensions.feature/feature.xml`.
4. Marque o bundle em `lbr.server.product.launch`.
5. Se tiver testes, inclua o bundle no `Require-Bundle` de
   `org.idempierelbr.test`.
6. Rode `mvn verify` e confira o jar em
   `org.idempierelbr.extensions.p2/target/repository/plugins/`.

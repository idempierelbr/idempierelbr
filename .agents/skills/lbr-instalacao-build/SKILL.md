---
name: lbr-instalacao-build
description: Compilar o LBR, criar um banco novo a partir do seed do LBR, sincronizar migrações do core e do LBR (RUN_SyncDB), subir o servidor no Eclipse ou instalar os bundles em produção. Use para checar se uma mudança compila, preparar um ambiente, aplicar scripts novos num banco ou diagnosticar falha de build.
---

# Instalação, build e sincronização

Referências:
- [README.md](../../../README.md), seção *Instalação*
- https://docs.idempiere.org/docs/category/basic-installation

Se o clone do iDempiere tiver `.agents/skills/` com uma skill de build e
execução (hoje `idempiere-headless-build-run`), considere-a também para os
passos do core. O que está aqui prevalece para o LBR.

## Credenciais

`idempiere.properties` e `idempiereEnv.properties` costumam ter a senha do banco
em texto aberto. Nunca imprima, cite ou faça commit deles. Se precisar de host,
porta ou nome do banco, pergunte ao desenvolvedor.

## 1. Build

Requisitos: JDK 17, Maven, git e o clone do iDempiere **na mesma versão** da
branch do LBR, ao lado deste repositório (ver `lbr-arquitetura` §2).

```bash
cd ../idempiere   && mvn verify    # gera o p2 do core: o LBR compila contra ele
cd ../idempierelbr && mvn verify   # compila o LBR e roda os *Test.java
```

- Não há `mvnw` no LBR: use o `mvn` do sistema.
- O build do core só precisa ser refeito quando o core mudar.
- O build gera um jar por bundle em `org.idempierelbr.<módulo>/target/` e o p2
  completo em `org.idempierelbr.extensions.p2/target/repository/`.
- O build copia jars de terceiros do `local-maven-repo/` para o `lib/` dos
  bundles. Rode `mvn verify` **antes** de compilar no Eclipse.
- Depois de trocar de branch, prefira `mvn clean verify`: sobras em `target/`
  escondem erros.
- Builds longos: rode em segundo plano e leia o fim da saída
  (`BUILD SUCCESS` / `BUILD FAILURE`).

### Falhas comuns

- `Compilation failure`: o erro aponta bundle e arquivo.
- `Missing requirement` / `Unable to satisfy dependency`: falta
  `Require-Bundle`/`Import-Package` no `MANIFEST.MF`, ou o p2 do core não foi
  gerado ou está em outra versão. Confira se `../idempiere` está na branch
  certa e compilado.
- Jar ausente em `lib/`: veja o `HowToBuild.txt` (publicação de jar avulso no
  `local-maven-repo`). Não mude URLs de repositório nos POMs.

## 2. Banco novo: use o seed do LBR

Para instalação nova, **parta do seed do LBR**, não de um banco puro do
iDempiere com as migrações do LBR por cima. O LBR tem muitos scripts antigos
(`migration/i2.0`, `i5.1`, `i7.1`) que já estão consolidados no seed e não foram
feitos para serem reaplicados do zero.

Siga a documentação oficial do iDempiere. O único desvio é o jar na etapa de
importação do seed:

```bash
# em vez de $IDEMPIERE_REPOSITORY/org.adempiere.server-feature/data/seed/Adempiere_pg.jar
jar xvf $LBR_REPOSITORY/org.idempierelbr.core/data/seed/iDempiere_pg.jar
```

O seed é só PostgreSQL. Não há 2Pack para aplicar o LBR num banco que já roda
sem ele.

### O seed pode estar atrás do repositório

O seed não é regenerado a cada mudança. **Depois de restaurar o seed, rode
sempre o SyncDB**, do core e do LBR, para aplicar os scripts mais novos que
ainda não estão nele. O SyncDB só aplica o que não está registrado em
`AD_MigrationScript`, então rodá-lo num banco em dia não faz nada.

## 3. Sincronizar migrações

Use sempre o mesmo comando, num banco recém-criado do seed ou depois de um
`git pull` que trouxe scripts novos. **Primeiro o core, depois o LBR**: scripts
do LBR podem depender de colunas novas do core.

### Desenvolvimento (clones lado a lado)

```bash
cd ../idempiere
bash RUN_SyncDBDev.sh                     # migrações do core
bash RUN_SyncDBDev.sh idempiere.properties "$(realpath ../idempierelbr/org.idempierelbr.core/migration)"   # migrações do LBR
```

- O primeiro argumento é o `idempiere.properties` (conexão sem criptografia), e
  os seguintes são as pastas de migração. A pasta é percorrida recursivamente:
  pega todas as `iD*/postgresql/*.sql`.
- Os pós-processos (`processes_post_migration`) rodam a partir do core.
- Confira a saída. Os logs de cada script ficam em `/tmp/SyncDB_out_<pid>`.
  Em caso de erro, corrija a causa e rode de novo.

### Servidor (produção ou homologação)

Copie `org.idempierelbr.core/migration` para o servidor e, com o
`IDEMPIERE_HOME` configurado:

```bash
cd $IDEMPIERE_HOME/utils
bash RUN_SyncDB.sh                                   # migrações do core
bash RUN_SyncDB.sh /caminho/absoluto/para/migration  # migrações do LBR
```

**O SyncDB altera o banco do desenvolvedor.** Avise antes de rodar e prefira um
banco descartável para testes e revisões.

## 4. Subir o servidor

### Eclipse (desenvolvimento)

1. Importe os projetos `org.idempierelbr.*` no workspace que já tem o iDempiere.
2. Rode **`lbr.server.product.launch`**, na raiz do repositório: é o
   `server.product` do iDempiere com os bundles do LBR marcados.
3. Em launch próprio, marque os bundles `org.idempierelbr.*` na aba Plug-ins e
   mantenha `automaticAdd`/`automaticIncludeRequirements` ligados.

`org.idempierelbr.jasperfonts` é fragmento: carrega com o JasperReports e não
aparece como bundle iniciável.

### Produção (console OSGi)

Não há p2 público. Os jars de produção são os de
`org.idempierelbr.extensions.p2/target/repository/plugins/` (sem o bundle de
testes). Instale na ordem das dependências (`base` → `core` → `tax` → demais)
pelo console OSGi, com `install`, `setbsl 5 <id>` e `sta <id>`. O passo a passo
está no README (*4b. Produção*).

Subir servidor ocupa portas e é demorado. Pergunte antes de subir e derrube ao
terminar.

## 5. Verificar uma mudança de ponta a ponta

1. `mvn verify` passa.
2. O SyncDB aplica os scripts da mudança sem erro (se houver scripts).
3. Os testes relevantes passam (`lbr-testes`).
4. Para mudança de tela ou comportamento, o cenário é testado no servidor
   rodando, inclusive um caminho fora do caminho feliz. Comunicação com SEFAZ
   só em homologação.
5. Informe exatamente quais desses passos rodaram e com que resultado.

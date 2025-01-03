# Bem-vindo ao iDempiereLBR!
Este projeto é uma extensão do [iDempiere Business Suite ERP/CRM/SCM](https://github.com/idempiere/idempiere) que implementa funcionalidades específicas para o cenário brasileiro, bem como suas traduções e planos de conta.

![Home](https://raw.githubusercontent.com/idempierelbr/idempierelbr/master/org.idempierelbr.core/data/screenshots/home.png)

## Principais funcionalidades
-   Tradução cuidadosa e especializada, por profissionais da área;
-   Parceiro de Negócios adaptado para Pessoas Físicas e Jurídicas;
-   Cadastro unificado (opcional) de filiais em um único Parceiro de Negócios;
-   Busca de endereços através do CEP;
-   Cálculo automático de impostos em operações de compra/venda/devolução;
-   Possibilidade de ajuste manual dos impostos no momento da operação de compra/venda/devolução;
-   CFOP automático nas operações de compra/venda/devolução;
-   Certificados Digitais;
-   Emissão de NF-e/NFC-e;
-   NF-e em contingência;
-   Lote de NF-e: Processamento assíncrono e síncrono;
-   Notificação e download automático de XML's de NF-e emitidas para o CNPJ da empresa;
-   Criação de documentos de entrada com base em XML's de NF-e de terceiros;
-   Destaque do Valor Aproximado dos Tributos em NF-e (Lei 12.741/2012);
-   FCI - Ficha de Conteúdo de Importação;
-   Boleto (emissão empresa e emissão banco) e CNAB 240 (arquivo remessa e retorno);
-   Sped EFD.

## Screenshots
![Menu](https://raw.githubusercontent.com/idempierelbr/idempierelbr/master/org.idempierelbr.core/data/screenshots/menu.png)

![Parceiro de Negócios](https://raw.githubusercontent.com/idempierelbr/idempierelbr/master/org.idempierelbr.core/data/screenshots/bpartner.png)

![CEP](https://raw.githubusercontent.com/idempierelbr/idempierelbr/master/org.idempierelbr.core/data/screenshots/cep.png)

![Produtos](https://raw.githubusercontent.com/idempierelbr/idempierelbr/master/org.idempierelbr.core/data/screenshots/product.png)

![Impostos](https://raw.githubusercontent.com/idempierelbr/idempierelbr/master/org.idempierelbr.core/data/screenshots/taxes.png)

## Instalação
O projeto LBR precisa fazer referências ao POM e ao repositório P2 do iDempiere. Para isso, é necessário que os paths estejam corretamente configurados. Atualmente, as configurações do LBR consideram a seguinte estrutura de diretórios em linux:

`/home/idempiere/sources/iDempiere10`

`/home/idempiere/sources/lbr`

O primeiro diretório é um clone do iDempiere, no branch iDempiere-12.0, com todas as dependências resolvidas. Você pode seguir todas as etapas em [https://wiki.idempiere.org/en/Installing_iDempiere](https://wiki.idempiere.org/en/Installing_iDempiere), na seção 2 (Installing iDempiere for Development), com uma pequena observação na etapa [Importing DB Seed Manually](https://wiki.idempiere.org/en/Importing_DB_Seed_Manually): 

Ao invés de utilizar o comando `jar xvf $IDEMPIERE_REPOSITORY/org.adempiere.server-feature/data/seed/Adempiere_pg.jar`, utilize o jar disponibilizado pelo LBR: `jar xvf $LBR_REPOSITORY/org.idempierelbr.core/data/seed/iDempiere_pg.jar`. Este último contém todos os scripts do LBR aplicados ao seed original do iDempiere.

Após ter o iDempiere sendo executado corretamente no eclipse, você pode iniciar a instalação do LBR.

O segundo diretório é um clone do LBR, no branch master. Se a sua estrutura de diretórios for diferente do especificado acima, é preciso ajustar os paths nos arquivos pom.xml de todos os projetos, bem como no arquivo org.idempierelbr.p2.targetplatform/org.idempierelbr.p2.targetplatform.target.

Você pode então fazer build do projeto com o comando:
 
`mvn verify`

Ao finalizar, você já pode importar os projetos do LBR no eclipse.


## Agradecimentos
Devemos reconhecer o esforço de todos os colaboradores deste projeto e dos antecessores, especialmente o time ADempiereLBR. Sabemos das longas horas investidas para adaptar este incrível ERP à realidade brasileira. Cabe mencionar que em todas as classes trazidas ao projeto iDempiereLBR, mantivemos a referência dos autores das mesmas.

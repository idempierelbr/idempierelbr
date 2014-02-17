SET SQLBLANKLINES ON
SET DEFINE OFF

-- Feb 17, 2014 14:36:22 PM BRST
-- CFOP Data
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000000, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.101', 'COMPRA PARA INDUSTRIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000001, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.102', 'COMPRA PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000002, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.111', 'COMPRA PARA INDUSTRIALIZAÇÃO DE MERCADORIA RECEBIDA ANTERIORMENTE EM CONSIGNAÇÃO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000003, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.113', 'COMPRA PARA COMERCIALIZAÇÃO, DE MERCADORIA RECEBIDA ANTERIORMENTE EM CONSIGNAÇÃO MERCANTIL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000004, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.116', 'COMPRA PARA INDUSTRIALIZAÇÃO ORIGINADA DE ENCOMENDA PARA RECEBIMENTO FUTURO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000005, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.117', 'COMPRA PARA COMERCIALIZAÇÃO ORIGINADA DE ENCOMENDA PARA RECEBIMENTO FUTURO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000006, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.118', 'COMPRA DE MERCADORIA PARA COMERCIALIZAÇÃO PELO ADQUIRENTE ORIGINÁRIO, ENTREGUE PELO VENDEDOR REMETENTE AO DESTINATÁRIO, EM VENDA À ORDEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000007, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.120', 'COMPRA PARA INDUSTRIALIZAÇÃO, EM VENDA À ORDEM, JÁ RECEBIDA DO VENDEDOR REMETENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000008, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.121', 'COMPRA PARA COMERCIALIZAÇÃO, EM VENDA À ORDEM, JÁ RECEBIDA DO VENDEDOR REMETENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000009, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.122', 'COMPRA PARA INDUSTRIALIZAÇÃO EM QUE A MERCADORIA FOI REMETIDA PELO FORNECEDOR AO INDUSTRIALIZADOR SEM TRANSITAR PELO ESTABELECIMENTO ADQUIRENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000010, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.124', 'INDUSTRIALIZAÇÃO EFETUADA POR OUTRA EMPRESA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000011, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.125', 'INDUSTRIALIZAÇÃO EFETUADA POR OUTRA EMPRESA QUANDO A MERCADORIA REMETIDA PARA UTILIZAÇÃO NO PROCESSO DE INDUSTRIALIZAÇÃO NÃO TRANSITOU PELO ESTABELECIMENTO ADQUIRENTE DA MERCADORIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000012, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.126', 'COMPRA PARA UTILIZAÇÃO NA PRESTAÇÃO DE SERVIÇO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000013, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.151', 'TRANSFERÊNCIA PARA INDUSTRIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000014, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.152', 'TRANSFERÊNCIA PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000015, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.153', 'TRANSFERÊNCIA DE ENERGIA ELÉTRICA PARA DISTRIBUIÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000016, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.154', 'TRANSFERÊNCIA PARA UTILIZAÇÃO NA PRESTAÇÃO DE SERVIÇO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000017, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.201', 'DEVOLUÇÃO DE VENDA DE PRODUÇÃO DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000018, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.202', 'DEVOLUÇÃO DE VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000019, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.203', 'DEVOLUÇÃO DE VENDA DE PRODUÇÃO DO ESTABELECIMENTO, DESTINADA À ZONA FRANCA DE MANAUS OU ÁREAS DE LIVRE COMÉRCIO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000020, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.204', 'DEVOLUÇÃO DE VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, DESTINADA À ZONA FRANCA DE MANAUS OU ÁREAS DE LIVRE COMÉRCIO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000021, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.205', 'ANULAÇÃO DE VALOR RELATIVO À PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000022, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.206', 'ANULAÇÃO DE VALOR RELATIVO À PRESTAÇÃO DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000023, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.207', 'ANULAÇÃO DE VALOR RELATIVO À VENDA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000024, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.208', 'DEVOLUÇÃO DE PRODUÇÃO DO ESTABELECIMENTO, REMETIDA EM TRANSFERÊNCIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000025, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.209', 'DEVOLUÇÃO DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, REMETIDA EM TRANSFERÊNCIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000026, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.251', 'COMPRA DE ENERGIA ELÉTRICA PARA DISTRIBUIÇÃO OU COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000027, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.252', 'COMPRA DE ENERGIA ELÉTRICA POR ESTABELECIMENTO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000028, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.253', 'COMPRA DE ENERGIA ELÉTRICA POR ESTABELECIMENTO COMERCIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000029, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.254', 'COMPRA DE ENERGIA ELÉTRICA POR ESTABELECIMENTO PRESTADOR DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000030, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.255', 'COMPRA DE ENERGIA ELÉTRICA POR ESTABELECIMENTO PRESTADOR DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000031, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.256', 'COMPRA DE ENERGIA ELÉTRICA POR ESTABELECIMENTO DE PRODUTOR RURAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000032, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.257', 'COMPRA DE ENERGIA ELÉTRICA PARA CONSUMO POR DEMANDA CONTRATADA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000033, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.301', 'AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO PARA EXECUÇÃO DE SERVIÇO DA MESMA NATUREZA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000034, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.302', 'AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO POR ESTABELECIMENTO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000035, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.303', 'AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO POR ESTABELECIMENTO COMERCIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000036, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.304', 'AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO POR ESTABELECIMENTO DE PRESTADOR DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000037, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.305', 'AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO POR ESTABELECIMENTO DE GERADORA OU DE DISTRIBUIDORA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000038, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.306', 'AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO POR ESTABELECIMENTO DE PRODUTOR RURAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000039, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.351', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE PARA EXECUÇÃO DE SERVIÇO DA MESMA NATUREZA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000040, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.352', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000041, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.353', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO COMERCIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000042, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.354', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO DE PRESTADOR DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000043, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.355', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO DE GERADORA OU DE DISTRIBUIDORA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000044, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.356', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO DE PRODUTOR RURAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000045, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.401', 'COMPRA PARA INDUSTRIALIZAÇÃO EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000046, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.403', 'COMPRA PARA COMERCIALIZAÇÃO EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000047, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.406', 'COMPRA DE BEM PARA O ATIVO IMOBILIZADO CUJA MERCADORIA ESTÁ SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000048, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.407', 'COMPRA DE MERCADORIA PARA USO OU CONSUMO CUJA MERCADORIA ESTÁ SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000049, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.408', 'TRANSFERÊNCIA PARA INDUSTRIALIZAÇÃO EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000050, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.409', 'TRANSFERÊNCIA PARA COMERCIALIZAÇÃO EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000051, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.410', 'DEVOLUÇÃO DE VENDA DE PRODUÇÃO DO ESTABELECIMENTO EM OPERAÇÃO COM PRODUTO SUJEITO AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000052, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.411', 'DEVOLUÇÃO DE VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000053, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.414', 'RETORNO DE PRODUÇÃO DO ESTABELECIMENTO, REMETIDA PARA VENDA FORA DO ESTABELECIMENTO EM OPERAÇÃO COM PRODUTO SUJEITO AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000054, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.415', 'RETORNO DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, REMETIDA PARA VENDA FORA DO ESTABELECIMENTO EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000055, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.451', 'RETORNO DE ANIMAL DO ESTABELECIMENTO PRODUTOR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000056, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.452', 'RETORNO DE INSUMO NÃO UTILIZADO NA PRODUÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000057, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.501', 'ENTRADA DE MERCADORIA RECEBIDA COM FIM ESPECÍFICO DE EXPORTAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000058, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.503', 'ENTRADA DECORRENTE DE DEVOLUÇÃO DE PRODUTO REMETIDO COM FIM ESPECÍFICO DE EXPORTAÇÃO, DE PRODUÇÃO DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000059, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.504', 'ENTRADA DECORRENTE DE DEVOLUÇÃO DE MERCADORIA REMETIDA COM FIM ESPECÍFICO DE EXPORTAÇÃO, ADQUIRIDA OU RECEBIDA DE TERCEIROS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000060, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.551', 'COMPRA DE BEM PARA O ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000061, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.552', 'TRANSFERÊNCIA DE BEM DO ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000062, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.553', 'DEVOLUÇÃO DE VENDA DE BEM DO ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000063, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.554', 'RETORNO DE BEM DO ATIVO IMOBILIZADO REMETIDO PARA USO FORA DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000064, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.555', 'ENTRADA DE BEM DO ATIVO IMOBILIZADO DE TERCEIRO, REMETIDO PARA USO NO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000065, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.556', 'COMPRA DE MATERIAL PARA USO OU CONSUMO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000066, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.557', 'TRANSFERÊNCIA DE MATERIAL PARA USO OU CONSUMO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000067, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.601', 'RECEBIMENTO, POR TRANSFERÊNCIA, DE CRÉDITO DE ICMS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000068, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.602', 'RECEBIMENTO, POR TRANSFERÊNCIA, DE SALDO CREDOR DE ICMS DE OUTRO ESTABELECIMENTO DA MESMA EMPRESA, PARA COMPENSAÇÃO DE SALDO DEVEDOR DE ICMS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000069, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.603', 'RESSARCIMENTO DE ICMS RETIDO POR SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000070, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.604', 'LANÇAMENTO DO CRÉDITO RELATIVO À COMPRA DE BEM PARA O ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000071, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.650', 'ENTRADAS DE COMBUSTÍVEIS, DERIVADOS OU NÃO DE PETRÓLEO E LUBRIFICANTES');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000072, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.651', 'COMPRA DE COMBUSTÍVEL OU LUBRIFICANTE PARA INDUSTRIALIZAÇÃO SUBSEQÜENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000073, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.652', 'COMPRA DE COMBUSTÍVEL OU LUBRIFICANTE PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000074, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.653', 'COMPRA DE COMBUSTÍVEL OU LUBRIFICANTE POR CONSUMIDOR OU USUÁRIO FINAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000075, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.658', 'TRANSFERÊNCIA DE COMBUSTÍVEL E LUBRIFICANTE PARA INDUSTRIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000076, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.659', 'TRANSFERÊNCIA DE COMBUSTÍVEL E LUBRIFICANTE PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000077, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.660', 'DEVOLUÇÃO DE VENDA DE COMBUSTÍVEL OU LUBRIFICANTE DESTINADO À INDUSTRIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000078, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.661', 'DEVOLUÇÃO DE VENDA DE COMBUSTÍVEL OU LUBRIFICANTE DESTINADO À COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000079, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.662', 'DEVOLUÇÃO DE VENDA DE COMBUSTÍVEL OU LUBRIFICANTE DESTINADO A CONSUMIDOR OU USUÁRIO FINAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000080, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.663', 'ENTRADA DE COMBUSTÍVEL OU LUBRIFICANTE PARA ARMAZENAGEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000081, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.664', 'RETORNO DE COMBUSTÍVEL OU LUBRIFICANTE REMETIDO PARA ARMAZENAGEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000082, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.901', 'ENTRADA PARA INDUSTRIALIZAÇÃO POR ENCOMENDA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000083, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.902', 'RETORNO DE MERCADORIA REMETIDA PARA INDUSTRIALIZAÇÃO POR ENCOMENDA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000084, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.903', 'ENTRADA DE MERCADORIA REMETIDA PARA INDUSTRIALIZAÇÃO E NÃO APLICADA NO REFERIDO PROCESSO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000085, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.904', 'RETORNO DE REMESSA PARA VENDA FORA DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000086, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.905', 'ENTRADA DE MERCADORIA RECEBIDA PARA DEPÓSITO EM DEPÓSITO FECHADO OU ARMAZÉM GERAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000087, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.906', 'RETORNO DE MERCADORIA REMETIDA PARA DEPÓSITO FECHADO OU ARMAZÉM GERAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000088, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.907', 'RETORNO SIMBÓLICO DE MERCADORIA REMETIDA PARA DEPÓSITO FECHADO OU ARMAZÉM GERAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000089, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.908', 'ENTRADA DE BEM POR CONTA DE CONTRATO DE COMODATO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000090, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.909', 'RETORNO DE BEM REMETIDO POR CONTA DE CONTRATO DE COMODATO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000091, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.910', 'ENTRADA DE BONIFICAÇÃO, DOAÇÃO OU BRINDE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000092, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.911', 'ENTRADA DE AMOSTRA GRÁTIS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000093, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.912', 'ENTRADA DE MERCADORIA OU BEM RECEBIDO PARA DEMONSTRAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000094, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.913', 'RETORNO DE MERCADORIA OU BEM REMETIDO PARA DEMONSTRAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000095, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.914', 'RETORNO DE MERCADORIA OU BEM REMETIDO PARA EXPOSIÇÃO OU FEIRA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000096, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.915', 'ENTRADA DE MERCADORIA OU BEM RECEBIDO PARA CONSERTO OU REPARO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000097, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.916', 'RETORNO DE MERCADORIA OU BEM REMETIDO PARA CONSERTO OU REPARO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000098, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.917', 'ENTRADA DE MERCADORIA RECEBIDA EM CONSIGNAÇÃO MERCANTIL OU INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000099, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.918', 'DEVOLUÇÃO DE MERCADORIA REMETIDA EM CONSIGNAÇÃO MERCANTIL OU INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000100, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.919', 'DEVOLUÇÃO SIMBÓLICA DE MERCADORIA VENDIDA OU UTILIZADA EM PROCESSO INDUSTRIAL, REMETIDA ANTERIORMENTE EM CONSIGNAÇÃO MERCANTIL OU INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000101, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.920', 'ENTRADA DE VASILHAME OU SACARIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000102, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.921', 'RETORNO DE VASILHAME OU SACARIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000103, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.922', 'LANÇAMENTO EFETUADO A TÍTULO DE SIMPLES FATURAMENTO DECORRENTE DE COMPRA PARA RECEBIMENTO FUTURO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000104, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.923', 'ENTRADA DE MERCADORIA RECEBIDA DO VENDEDOR REMETENTE, EM VENDA À ORDEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000105, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.924', 'ENTRADA PARA INDUSTRIALIZAÇÃO POR CONTA E ORDEM DO ADQUIRENTE DA MERCADORIA, QUANDO ESTA NÃO TRANSITAR PELO ESTABELECIMENTO DO ADQUIRENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000106, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.925', 'RETORNO DE MERCADORIA REMETIDA PARA INDUSTRIALIZAÇÃO POR CONTA E ORDEM DO ADQUIRENTE DA MERCADORIA, QUANDO ESTA NÃO TRANSITAR PELO ESTABELECIMENTO DO ADQUIRENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000107, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.926', 'LANÇAMENTO EFETUADO A TÍTULO DE RECLASSIFICAÇÃO DE MERCADORIA DECORRENTE DE FORMAÇÃO DE KIT OU DE SUA DESAGREGAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000108, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.933', 'PRESTAÇÃO DE SERVIÇO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000109, 0, 11, 'Y', sysdate, 100, sysdate, 100, '1.949', 'OUTRA ENTRADA DE MERCADORIA OU PRESTAÇÃO DE SERVIÇO NÃO ESPECIFICADA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000110, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.101', 'COMPRA PARA INDUSTRIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000111, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.102', 'COMPRA PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000112, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.111', 'COMPRA PARA INDUSTRIALIZAÇÃO DE MERCADORIA RECEBIDA ANTERIORMENTE EM CONSIGNAÇÃO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000113, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.113', 'COMPRA PARA COMERCIALIZAÇÃO, DE MERCADORIA RECEBIDA ANTERIORMENTE EM CONSIGNAÇÃO MERCANTIL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000114, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.116', 'COMPRA PARA INDUSTRIALIZAÇÃO ORIGINADA DE ENCOMENDA PARA RECEBIMENTO FUTURO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000115, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.117', 'COMPRA PARA COMERCIALIZAÇÃO ORIGINADA DE ENCOMENDA PARA RECEBIMENTO FUTURO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000116, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.118', 'COMPRA DE MERCADORIA PARA COMERCIALIZAÇÃO PELO ADQUIRENTE ORIGINÁRIO, ENTREGUE PELO VENDEDOR REMETENTE AO DESTINATÁRIO, EM VENDA À ORDEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000117, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.120', 'COMPRA PARA INDUSTRIALIZAÇÃO, EM VENDA À ORDEM, JÁ RECEBIDA DO VENDEDOR REMETENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000118, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.121', 'COMPRA PARA COMERCIALIZAÇÃO, EM VENDA À ORDEM, JÁ RECEBIDA DO VENDEDOR REMETENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000119, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.122', 'COMPRA PARA INDUSTRIALIZAÇÃO EM QUE A MERCADORIA FOI REMETIDA PELO FORNECEDOR AO INDUSTRIALIZADOR SEM TRANSITAR PELO ESTABELECIMENTO ADQUIRENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000120, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.124', 'INDUSTRIALIZAÇÃO EFETUADA POR OUTRA EMPRESA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000121, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.125', 'INDUSTRIALIZAÇÃO EFETUADA POR OUTRA EMPRESA QUANDO A MERCADORIA REMETIDA PARA UTILIZAÇÃO NO PROCESSO DE INDUSTRIALIZAÇÃO NÃO TRANSITOU PELO ESTABELECIMENTO ADQUIRENTE DA MERCADORIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000122, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.126', 'COMPRA PARA UTILIZAÇÃO NA PRESTAÇÃO DE SERVIÇO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000123, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.151', 'TRANSFERÊNCIA PARA INDUSTRIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000124, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.152', 'TRANSFERÊNCIA PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000125, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.153', 'TRANSFERÊNCIA DE ENERGIA ELÉTRICA PARA DISTRIBUIÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000126, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.154', 'TRANSFERÊNCIA PARA UTILIZAÇÃO NA PRESTAÇÃO DE SERVIÇO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000127, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.201', 'DEVOLUÇÃO DE VENDA DE PRODUÇÃO DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000128, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.202', 'DEVOLUÇÃO DE VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000129, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.203', 'DEVOLUÇÃO DE VENDA DE PRODUÇÃO DO ESTABELECIMENTO, DESTINADA À ZONA FRANCA DE MANAUS OU ÁREAS DE LIVRE COMÉRCIO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000130, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.204', 'DEVOLUÇÃO DE VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, DESTINADA À ZONA FRANCA DE MANAUS OU ÁREAS DE LIVRE COMÉRCIO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000131, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.205', 'ANULAÇÃO DE VALOR RELATIVO À PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000132, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.206', 'ANULAÇÃO DE VALOR RELATIVO À PRESTAÇÃO DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000133, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.207', 'ANULAÇÃO DE VALOR RELATIVO À VENDA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000134, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.208', 'DEVOLUÇÃO DE PRODUÇÃO DO ESTABELECIMENTO, REMETIDA EM TRANSFERÊNCIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000135, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.209', 'DEVOLUÇÃO DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, REMETIDA EM TRANSFERÊNCIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000136, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.251', 'COMPRA DE ENERGIA ELÉTRICA PARA DISTRIBUIÇÃO OU COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000137, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.252', 'COMPRA DE ENERGIA ELÉTRICA POR ESTABELECIMENTO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000138, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.253', 'COMPRA DE ENERGIA ELÉTRICA POR ESTABELECIMENTO COMERCIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000139, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.254', 'COMPRA DE ENERGIA ELÉTRICA POR ESTABELECIMENTO PRESTADOR DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000140, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.255', 'COMPRA DE ENERGIA ELÉTRICA POR ESTABELECIMENTO PRESTADOR DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000141, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.256', 'COMPRA DE ENERGIA ELÉTRICA POR ESTABELECIMENTO DE PRODUTOR RURAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000142, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.257', 'COMPRA DE ENERGIA ELÉTRICA PARA CONSUMO POR DEMANDA CONTRATADA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000143, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.301', 'AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO PARA EXECUÇÃO DE SERVIÇO DA MESMA NATUREZA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000144, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.302', 'AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO POR ESTABELECIMENTO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000145, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.303', 'AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO POR ESTABELECIMENTO COMERCIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000146, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.304', 'AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO POR ESTABELECIMENTO DE PRESTADOR DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000147, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.305', 'AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO POR ESTABELECIMENTO DE GERADORA OU DE DISTRIBUIDORA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000148, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.306', 'AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO POR ESTABELECIMENTO DE PRODUTOR RURAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000149, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.351', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE PARA EXECUÇÃO DE SERVIÇO DA MESMA NATUREZA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000150, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.352', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000151, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.353', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO COMERCIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000152, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.354', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO DE PRESTADOR DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000153, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.355', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO DE GERADORA OU DE DISTRIBUIDORA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000154, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.356', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO DE PRODUTOR RURAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000155, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.401', 'COMPRA PARA INDUSTRIALIZAÇÃO EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000156, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.403', 'COMPRA PARA COMERCIALIZAÇÃO EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000157, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.406', 'COMPRA DE BEM PARA O ATIVO IMOBILIZADO CUJA MERCADORIA ESTÁ SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000158, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.407', 'COMPRA DE MERCADORIA PARA USO OU CONSUMO CUJA MERCADORIA ESTÁ SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000159, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.408', 'TRANSFERÊNCIA PARA INDUSTRIALIZAÇÃO EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000160, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.409', 'TRANSFERÊNCIA PARA COMERCIALIZAÇÃO EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000161, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.410', 'DEVOLUÇÃO DE VENDA DE PRODUÇÃO DO ESTABELECIMENTO EM OPERAÇÃO COM PRODUTO SUJEITO AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000162, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.411', 'DEVOLUÇÃO DE VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000163, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.414', 'RETORNO DE PRODUÇÃO DO ESTABELECIMENTO, REMETIDA PARA VENDA FORA DO ESTABELECIMENTO EM OPERAÇÃO COM PRODUTO SUJEITO AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000164, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.415', 'RETORNO DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, REMETIDA PARA VENDA FORA DO ESTABELECIMENTO EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000165, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.501', 'ENTRADA DE MERCADORIA RECEBIDA COM FIM ESPECÍFICO DE EXPORTAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000166, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.503', 'ENTRADA DECORRENTE DE DEVOLUÇÃO DE PRODUTO REMETIDO COM FIM ESPECÍFICO DE EXPORTAÇÃO, DE PRODUÇÃO DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000167, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.504', 'ENTRADA DECORRENTE DE DEVOLUÇÃO DE MERCADORIA REMETIDA COM FIM ESPECÍFICO DE EXPORTAÇÃO, ADQUIRIDA OU RECEBIDA DE TERCEIROS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000168, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.551', 'COMPRA DE BEM PARA O ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000169, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.552', 'TRANSFERÊNCIA DE BEM DO ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000170, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.553', 'DEVOLUÇÃO DE VENDA DE BEM DO ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000171, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.554', 'RETORNO DE BEM DO ATIVO IMOBILIZADO REMETIDO PARA USO FORA DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000172, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.555', 'ENTRADA DE BEM DO ATIVO IMOBILIZADO DE TERCEIRO, REMETIDO PARA USO NO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000173, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.556', 'COMPRA DE MATERIAL PARA USO OU CONSUMO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000174, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.557', 'TRANSFERÊNCIA DE MATERIAL PARA USO OU CONSUMO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000175, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.603', 'RESSARCIMENTO DE ICMS RETIDO POR SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000176, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.651', 'ENTRADAS DE COMBUSTÍVEIS, DERIVADOS OU NÃO DE PETRÓLEO E LUBRIFICANTES');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000177, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.652', 'COMPRA DE COMBUSTÍVEL OU LUBRIFICANTE PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000178, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.653', 'COMPRA DE COMBUSTÍVEL OU LUBRIFICANTE POR CONSUMIDOR OU USUÁRIO FINAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000179, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.658', 'TRANSFERÊNCIA DE COMBUSTÍVEL E LUBRIFICANTE PARA INDUSTRIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000180, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.659', 'TRANSFERÊNCIA DE COMBUSTÍVEL E LUBRIFICANTE PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000181, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.660', 'DEVOLUÇÃO DE VENDA DE COMBUSTÍVEL OU LUBRIFICANTE DESTINADO À INDUSTRIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000182, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.661', 'DEVOLUÇÃO DE VENDA DE COMBUSTÍVEL OU LUBRIFICANTE DESTINADO À COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000183, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.662', 'DEVOLUÇÃO DE VENDA DE COMBUSTÍVEL OU LUBRIFICANTE DESTINADO A CONSUMIDOR OU USUÁRIO FINAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000184, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.663', 'ENTRADA DE COMBUSTÍVEL OU LUBRIFICANTE PARA ARMAZENAGEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000185, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.664', 'RETORNO DE COMBUSTÍVEL OU LUBRIFICANTE REMETIDO PARA ARMAZENAGEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000186, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.901', 'ENTRADA PARA INDUSTRIALIZAÇÃO POR ENCOMENDA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000187, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.902', 'RETORNO DE MERCADORIA REMETIDA PARA INDUSTRIALIZAÇÃO POR ENCOMENDA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000188, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.903', 'ENTRADA DE MERCADORIA REMETIDA PARA INDUSTRIALIZAÇÃO E NÃO APLICADA NO REFERIDO PROCESSO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000189, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.904', 'RETORNO DE REMESSA PARA VENDA FORA DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000190, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.905', 'ENTRADA DE MERCADORIA RECEBIDA PARA DEPÓSITO EM DEPÓSITO FECHADO OU ARMAZÉM GERAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000191, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.906', 'RETORNO DE MERCADORIA REMETIDA PARA DEPÓSITO FECHADO OU ARMAZÉM GERAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000192, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.907', 'RETORNO SIMBÓLICO DE MERCADORIA REMETIDA PARA DEPÓSITO FECHADO OU ARMAZÉM GERAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000193, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.908', 'ENTRADA DE BEM POR CONTA DE CONTRATO DE COMODATO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000194, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.909', 'RETORNO DE BEM REMETIDO POR CONTA DE CONTRATO DE COMODATO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000195, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.910', 'ENTRADA DE BONIFICAÇÃO, DOAÇÃO OU BRINDE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000196, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.911', 'ENTRADA DE AMOSTRA GRÁTIS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000197, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.912', 'ENTRADA DE MERCADORIA OU BEM RECEBIDO PARA DEMONSTRAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000198, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.913', 'RETORNO DE MERCADORIA OU BEM REMETIDO PARA DEMONSTRAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000199, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.914', 'RETORNO DE MERCADORIA OU BEM REMETIDO PARA EXPOSIÇÃO OU FEIRA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000200, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.915', 'ENTRADA DE MERCADORIA OU BEM RECEBIDO PARA CONSERTO OU REPARO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000201, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.916', 'RETORNO DE MERCADORIA OU BEM REMETIDO PARA CONSERTO OU REPARO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000202, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.917', 'ENTRADA DE MERCADORIA RECEBIDA EM CONSIGNAÇÃO MERCANTIL OU INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000203, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.918', 'DEVOLUÇÃO DE MERCADORIA REMETIDA EM CONSIGNAÇÃO MERCANTIL OU INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000204, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.919', 'DEVOLUÇÃO SIMBÓLICA DE MERCADORIA VENDIDA OU UTILIZADA EM PROCESSO INDUSTRIAL, REMETIDA ANTERIORMENTE EM CONSIGNAÇÃO MERCANTIL OU INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000205, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.920', 'ENTRADA DE VASILHAME OU SACARIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000206, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.921', 'RETORNO DE VASILHAME OU SACARIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000207, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.922', 'LANÇAMENTO EFETUADO A TÍTULO DE SIMPLES FATURAMENTO DECORRENTE DE COMPRA PARA RECEBIMENTO FUTURO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000208, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.923', 'ENTRADA DE MERCADORIA RECEBIDA DO VENDEDOR REMETENTE, EM VENDA À ORDEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000209, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.924', 'ENTRADA PARA INDUSTRIALIZAÇÃO POR CONTA E ORDEM DO ADQUIRENTE DA MERCADORIA, QUANDO ESTA NÃO TRANSITAR PELO ESTABELECIMENTO DO ADQUIRENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000210, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.925', 'RETORNO DE MERCADORIA REMETIDA PARA INDUSTRIALIZAÇÃO POR CONTA E ORDEM DO ADQUIRENTE DA MERCADORIA, QUANDO ESTA NÃO TRANSITAR PELO ESTABELECIMENTO DO ADQUIRENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000211, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.933', 'PRESTAÇÃO DE SERVIÇO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000212, 0, 11, 'Y', sysdate, 100, sysdate, 100, '2.949', 'OUTRA ENTRADA DE MERCADORIA OU PRESTAÇÃO DE SERVIÇO NÃO ESPECIFICADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000213, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.101', 'COMPRA PARA INDUSTRIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000214, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.102', 'COMPRA PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000215, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.126', 'COMPRA PARA UTILIZAÇÃO NA PRESTAÇÃO DE SERVIÇO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000216, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.127', 'COMPRA PARA INDUSTRIALIZAÇÃO SOB O REGIME DE “DRAWBACK”');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000217, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.201', 'DEVOLUÇÃO DE VENDA DE PRODUÇÃO DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000218, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.202', 'DEVOLUÇÃO DE VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000219, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.205', 'ANULAÇÃO DE VALOR RELATIVO À PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000220, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.206', 'ANULAÇÃO DE VALOR RELATIVO À PRESTAÇÃO DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000221, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.207', 'ANULAÇÃO DE VALOR RELATIVO À VENDA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000222, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.211', 'DEVOLUÇÃO DE VENDA DE PRODUÇÃO DO ESTABELECIMENTO SOB O REGIME DE “DRAWBACK”');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000223, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.251', 'COMPRA DE ENERGIA ELÉTRICA PARA DISTRIBUIÇÃO OU COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000224, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.301', 'AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO PARA EXECUÇÃO DE SERVIÇO DA MESMA NATUREZA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000225, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.351', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE PARA EXECUÇÃO DE SERVIÇO DA MESMA NATUREZA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000226, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.352', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000227, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.353', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO COMERCIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000228, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.354', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO DE PRESTADOR DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000229, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.355', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO DE GERADORA OU DE DISTRIBUIDORA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000230, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.356', 'AQUISIÇÃO DE SERVIÇO DE TRANSPORTE POR ESTABELECIMENTO DE PRODUTOR RURAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000231, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.503', 'DEVOLUÇÃO DE MERCADORIA EXPORTADA QUE TENHA SIDO RECEBIDA COM FIM ESPECÍFICO DE EXPORTAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000232, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.551', 'COMPRA DE BEM PARA O ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000233, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.553', 'DEVOLUÇÃO DE VENDA DE BEM DO ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000234, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.556', 'COMPRA DE MATERIAL PARA USO OU CONSUMO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000235, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.650', 'ENTRADAS DE COMBUSTÍVEIS, DERIVADOS OU NÃO DE PETRÓLEO E LUBRIFICANTES');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000236, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.651', 'COMPRA DE COMBUSTÍVEL OU LUBRIFICANTE PARA INDUSTRIALIZAÇÃO SUBSEQÜENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000237, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.652', 'COMPRA DE COMBUSTÍVEL OU LUBRIFICANTE PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000238, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.653', 'COMPRA DE COMBUSTÍVEL OU LUBRIFICANTE POR CONSUMIDOR OU USUÁRIO FINAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000239, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.930', 'LANÇAMENTO EFETUADO A TÍTULO DE ENTRADA DE BEM SOB AMPARO DE REGIME ESPECIAL ADUANEIRO DE ADMISSÃO TEMPORÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000240, 0, 11, 'Y', sysdate, 100, sysdate, 100, '3.949', 'OUTRA ENTRADA DE MERCADORIA OU PRESTAÇÃO DE SERVIÇO NÃO ESPECIFICADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000241, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.101', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000242, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.102', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000243, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.103', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO, EFETUADA FORA DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000244, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.104', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, EFETUADA FORA DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000245, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.105', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO QUE NÃO DEVA POR ELE TRANSITAR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000246, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.106', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, QUE NÃO DEVA POR ELE TRANSITAR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000247, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.109', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO, DESTINADA À ZONA FRANCA DE MANAUS OU ÁREAS DE LIVRE COMÉRCIO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000248, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.110', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, DESTINADA À ZONA FRANCA DE MANAUS OU ÁREAS DE LIVRE COMÉRCIO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000249, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.111', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO REMETIDA ANTERIORMENTE EM CONSIGNAÇÃO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000250, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.112', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS REMETIDA ANTERIORMENTE EM CONSIGNAÇÃO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000251, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.113', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO REMETIDA ANTERIORMENTE EM CONSIGNAÇÃO MERCANTIL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000252, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.114', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS REMETIDA ANTERIORMENTE EM CONSIGNAÇÃO MERCANTIL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000253, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.115', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, RECEBIDA ANTERIORMENTE EM CONSIGNAÇÃO MERCANTIL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000254, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.116', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO ORIGINADA DE ENCOMENDA PARA ENTREGA FUTURA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000255, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.117', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, ORIGINADA DE ENCOMENDA PARA ENTREGA FUTURA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000256, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.118', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO ENTREGUE AO DESTINATÁRIO POR CONTA E ORDEM DO ADQUIRENTE ORIGINÁRIO, EM VENDA À ORDEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000257, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.119', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS ENTREGUE AO DESTINATÁRIO POR CONTA E ORDEM DO ADQUIRENTE ORIGINÁRIO, EM VENDA À ORDEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000258, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.120', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS ENTREGUE AO DESTINATÁRIO PELO VENDEDOR REMETENTE, EM VENDA À ORDEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000259, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.122', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO REMETIDA PARA INDUSTRIALIZAÇÃO, POR CONTA E ORDEM DO ADQUIRENTE, SEM TRANSITAR PELO ESTABELECIMENTO DO ADQUIRENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000260, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.123', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS REMETIDA PARA INDUSTRIALIZAÇÃO, POR CONTA E ORDEM DO ADQUIRENTE, SEM TRANSITAR PELO ESTABELECIMENTO DO ADQUIRENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000261, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.124', 'INDUSTRIALIZAÇÃO EFETUADA PARA OUTRA EMPRESA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000262, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.125', 'INDUSTRIALIZAÇÃO EFETUADA PARA OUTRA EMPRESA QUANDO A MERCADORIA RECEBIDA PARA UTILIZAÇÃO NO PROCESSO DE INDUSTRIALIZAÇÃO NÃO TRANSITAR PELO ESTABELECIMENTO ADQUIRENTE DA MERCADORIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000263, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.151', 'TRANSFERÊNCIA DE PRODUÇÃO DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000264, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.152', 'TRANSFERÊNCIA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000265, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.153', 'TRANSFERÊNCIA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000266, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.155', 'TRANSFERÊNCIA DE PRODUÇÃO DO ESTABELECIMENTO, QUE NÃO DEVA POR ELE TRANSITAR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000267, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.156', 'TRANSFERÊNCIA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, QUE NÃO DEVA POR ELE TRANSITAR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000268, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.201', 'DEVOLUÇÃO DE COMPRA PARA INDUSTRIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000269, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.202', 'DEVOLUÇÃO DE COMPRA PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000270, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.205', 'ANULAÇÃO DE VALOR RELATIVO A AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000271, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.206', 'ANULAÇÃO DE VALOR RELATIVO A AQUISIÇÃO DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000272, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.207', 'ANULAÇÃO DE VALOR RELATIVO À COMPRA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000273, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.208', 'DEVOLUÇÃO DE MERCADORIA RECEBIDA EM TRANSFERÊNCIA PARA INDUSTRIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000274, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.209', 'DEVOLUÇÃO DE MERCADORIA RECEBIDA EM TRANSFERÊNCIA PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000275, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.210', 'DEVOLUÇÃO DE COMPRA PARA UTILIZAÇÃO NA PRESTAÇÃO DE SERVIÇO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000276, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.251', 'VENDA DE ENERGIA ELÉTRICA PARA DISTRIBUIÇÃO OU COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000277, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.252', 'VENDA DE ENERGIA ELÉTRICA PARA ESTABELECIMENTO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000278, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.253', 'VENDA DE ENERGIA ELÉTRICA PARA ESTABELECIMENTO COMERCIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000279, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.254', 'VENDA DE ENERGIA ELÉTRICA PARA ESTABELECIMENTO PRESTADOR DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000280, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.255', 'VENDA DE ENERGIA ELÉTRICA PARA ESTABELECIMENTO PRESTADOR DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000281, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.256', 'VENDA DE ENERGIA ELÉTRICA PARA ESTABELECIMENTO DE PRODUTOR RURAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000282, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.257', 'VENDA DE ENERGIA ELÉTRICA PARA CONSUMO POR DEMANDA CONTRATADA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000283, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.258', 'VENDA DE ENERGIA ELÉTRICA A NÃO CONTRIBUINTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000284, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.301', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO PARA EXECUÇÃO DE SERVIÇO DA MESMA NATUREZA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000285, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.302', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO A ESTABELECIMENTO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000286, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.303', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO A ESTABELECIMENTO COMERCIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000287, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.304', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO A ESTABELECIMENTO DE PRESTADOR DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000288, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.305', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO A ESTABELECIMENTO DE GERADORA OU DE DISTRIBUIDORA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000289, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.306', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO A ESTABELECIMENTO DE PRODUTOR RURAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000290, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.307', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO A NÃO CONTRIBUINTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000291, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.351', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE PARA EXECUÇÃO DE SERVIÇO DA MESMA NATUREZA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000292, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.352', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE A ESTABELECIMENTO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000293, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.353', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE A ESTABELECIMENTO COMERCIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000294, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.354', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE A ESTABELECIMENTO DE PRESTADOR DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000295, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.355', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE A ESTABELECIMENTO DE GERADORA OU DE DISTRIBUIDORA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000296, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.356', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE A ESTABELECIMENTO DE PRODUTOR RURAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000297, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.357', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE A NÃO CONTRIBUINTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000298, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.401', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO EM OPERAÇÃO COM PRODUTO SUJEITO AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA, NA CONDIÇÃO DE CONTRIBUINTE SUBSTITUTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000299, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.402', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO DE PRODUTO SUJEITO AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA, EM OPERAÇÃO ENTRE CONTRIBUINTES SUBSTITUTOS DO MESMO PRODUTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000300, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.403', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA, NA CONDIÇÃO DE CONTRIBUINTE SUBSTITUTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000301, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.405', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA, NA CONDIÇÃO DE CONTRIBUINTE SUBSTITUÍDO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000302, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.408', 'TRANSFERÊNCIA DE PRODUÇÃO DO ESTABELECIMENTO EM OPERAÇÃO COM PRODUTO SUJEITO AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000303, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.409', 'TRANSFERÊNCIA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000304, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.410', 'DEVOLUÇÃO DE COMPRA PARA INDUSTRIALIZAÇÃO EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000305, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.411', 'DEVOLUÇÃO DE COMPRA PARA COMERCIALIZAÇÃO EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000306, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.412', 'DEVOLUÇÃO DE BEM DO ATIVO IMOBILIZADO, EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000307, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.413', 'DEVOLUÇÃO DE MERCADORIA DESTINADA AO USO OU CONSUMO, EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000308, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.414', 'REMESSA DE PRODUÇÃO DO ESTABELECIMENTO PARA VENDA FORA DO ESTABELECIMENTO EM OPERAÇÃO COM PRODUTO SUJEITO AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000309, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.415', 'REMESSA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS PARA VENDA FORA DO ESTABELECIMENTO, EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000310, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.451', 'REMESSA DE ANIMAL E DE INSUMO PARA ESTABELECIMENTO PRODUTOR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000311, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.501', 'REMESSA DE PRODUÇÃO DO ESTABELECIMENTO, COM FIM ESPECÍFICO DE EXPORTAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000312, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.502', 'REMESSA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, COM FIM ESPECÍFICO DE EXPORTAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000313, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.503', 'DEVOLUÇÃO DE MERCADORIA RECEBIDA COM FIM ESPECÍFICO DE EXPORTAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000314, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.551', 'VENDA DE BEM DO ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000315, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.552', 'TRANSFERÊNCIA DE BEM DO ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000316, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.553', 'DEVOLUÇÃO DE COMPRA DE BEM PARA O ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000317, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.554', 'REMESSA DE BEM DO ATIVO IMOBILIZADO PARA USO FORA DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000318, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.555', 'DEVOLUÇÃO DE BEM DO ATIVO IMOBILIZADO DE TERCEIRO, RECEBIDO PARA USO NO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000319, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.556', 'DEVOLUÇÃO DE COMPRA DE MATERIAL DE USO OU CONSUMO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000320, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.557', 'TRANSFERÊNCIA DE MATERIAL DE USO OU CONSUMO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000321, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.601', 'TRANSFERÊNCIA DE CRÉDITO DE ICMS ACUMULADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000322, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.602', 'TRANSFERÊNCIA DE SALDO CREDOR DE ICMS PARA OUTRO ESTABELECIMENTO DA MESMA EMPRESA, DESTINADO À COMPENSAÇÃO DE SALDO DEVEDOR DE ICMS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000323, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.603', 'RESSARCIMENTO DE ICMS RETIDO POR SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000324, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.650', 'SAÍDAS DE COMBUSTÍVEIS, DERIVADOS OU NÃO DE PETRÓLEO E LUBRIFICANTES');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000325, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.651', 'VENDA DE COMBUSTÍVEL OU LUBRIFICANTE DE PRODUÇÃO DO ESTABELECIMENTO DESTINADO À INDUSTRIALIZAÇÃO SUBSEQÜENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000326, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.652', 'VENDA DE COMBUSTÍVEL OU LUBRIFICANTE DE PRODUÇÃO DO ESTABELECIMENTO DESTINADO À COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000327, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.653', 'VENDA DE COMBUSTÍVEL OU LUBRIFICANTE DE PRODUÇÃO DO ESTABELECIMENTO DESTINADO A CONSUMIDOR OU USUÁRIO FINAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000328, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.654', 'VENDA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO OU RECEBIDO DE TERCEIROS DESTINADO À INDUSTRIALIZAÇÃO SUBSEQÜENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000329, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.655', 'VENDA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO OU RECEBIDO DE TERCEIROS DESTINADO À COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000330, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.656', 'VENDA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO OU RECEBIDO DE TERCEIROS DESTINADO A CONSUMIDOR OU USUÁRIO FINAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000331, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.657', 'REMESSA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO OU RECEBIDO DE TERCEIROS PARA VENDA FORA DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000332, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.658', 'TRANSFERÊNCIA DE COMBUSTÍVEL OU LUBRIFICANTE DE PRODUÇÃO DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000333, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.659', 'TRANSFERÊNCIA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO OU RECEBIDO DE TERCEIRO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000334, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.660', 'DEVOLUÇÃO DE COMPRA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO PARA INDUSTRIALIZAÇÃO SUBSEQÜENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000335, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.661', 'DEVOLUÇÃO DE COMPRA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO PARA COMERCIALIZAÇÃ');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000336, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.662', 'DEVOLUÇÃO DE COMPRA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO POR CONSUMIDOR OU USUÁRIO FINAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000337, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.663', 'REMESSA PARA ARMAZENAGEM DE COMBUSTÍVEL OU LUBRIFICANTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000338, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.664', 'RETORNO DE COMBUSTÍVEL OU LUBRIFICANTE RECEBIDO PARA ARMAZENAGEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000339, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.665', 'RETORNO SIMBÓLICO DE COMBUSTÍVEL OU LUBRIFICANTE RECEBIDO PARA ARMAZENAGEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000340, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.666', 'REMESSA POR CONTA E ORDEM DE TERCEIROS DE COMBUSTÍVEL OU LUBRIFICANTE RECEBIDO PARA ARMAZENAGEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000341, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.901', 'REMESSA PARA INDUSTRIALIZAÇÃO POR ENCOMENDA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000342, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.902', 'RETORNO DE MERCADORIA UTILIZADA NA INDUSTRIALIZAÇÃO POR ENCOMENDA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000343, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.903', 'RETORNO DE MERCADORIA RECEBIDA PARA INDUSTRIALIZAÇÃO E NÃO APLICADA NO REFERIDO PROCESSO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000344, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.904', 'REMESSA PARA VENDA FORA DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000345, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.905', 'REMESSA PARA DEPÓSITO FECHADO OU ARMAZÉM GERAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000346, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.906', 'RETORNO DE MERCADORIA DEPOSITADA EM DEPÓSITO FECHADO OU ARMAZÉM GERAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000347, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.907', 'RETORNO SIMBÓLICO DE MERCADORIA DEPOSITADA EM DEPÓSITO FECHADO OU ARMAZÉM GERAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000348, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.908', 'REMESSA DE BEM POR CONTA DE CONTRATO DE COMODATO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000349, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.909', 'RETORNO DE BEM RECEBIDO POR CONTA DE CONTRATO DE COMODATO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000350, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.910', 'REMESSA EM BONIFICAÇÃO, DOAÇÃO OU BRINDE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000351, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.911', 'REMESSA DE AMOSTRA GRÁTIS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000352, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.912', 'REMESSA DE MERCADORIA OU BEM PARA DEMONSTRAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000353, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.913', 'RETORNO DE MERCADORIA OU BEM RECEBIDO PARA DEMONSTRAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000354, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.914', 'REMESSA DE MERCADORIA OU BEM PARA EXPOSIÇÃO OU FEIRA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000355, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.915', 'REMESSA DE MERCADORIA OU BEM PARA CONSERTO OU REPARO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000356, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.916', 'RETORNO DE MERCADORIA OU BEM RECEBIDO PARA CONSERTO OU REPARO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000357, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.917', 'REMESSA DE MERCADORIA EM CONSIGNAÇÃO MERCANTIL OU INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000358, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.918', 'DEVOLUÇÃO DE MERCADORIA RECEBIDA EM CONSIGNAÇÃO MERCANTIL OU INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000359, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.919', 'DEVOLUÇÃO SIMBÓLICA DE MERCADORIA VENDIDA OU UTILIZADA EM PROCESSO INDUSTRIAL, RECEBIDA ANTERIORMENTE EM CONSIGNAÇÃO MERCANTIL OU INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000360, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.920', 'REMESSA DE VASILHAME OU SACARIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000361, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.921', 'DEVOLUÇÃO DE VASILHAME OU SACARIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000362, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.922', 'LANÇAMENTO EFETUADO A TÍTULO DE SIMPLES FATURAMENTO DECORRENTE DE VENDA PARA ENTREGA FUTURA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000363, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.923', 'REMESSA DE MERCADORIA POR CONTA E ORDEM DE TERCEIROS, EM VENDA À ORDEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000364, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.924', 'REMESSA PARA INDUSTRIALIZAÇÃO POR CONTA E ORDEM DO ADQUIRENTE DA MERCADORIA, ');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000365, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.925', 'RETORNO DE MERCADORIA RECEBIDA PARA INDUSTRIALIZAÇÃO POR CONTA E ORDEM DO ADQUIRENTE DA MERCADORIA, QUANDO AQUELA NÃO TRANSITAR PELO ESTABELECIMENTO DO ADQUIRENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000366, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.926', 'LANÇAMENTO EFETUADO A TÍTULO DE RECLASSIFICAÇÃO DE MERCADORIA DECORRENTE DE FORMAÇÃO DE KIT OU DE SUA DESAGREGAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000367, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.927', 'LANÇAMENTO EFETUADO A TÍTULO DE BAIXA DE ESTOQUE DECORRENTE DE PERDA, ROUBO OU DETERIORAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000368, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.928', 'LANÇAMENTO EFETUADO A TÍTULO DE BAIXA DE ESTOQUE DECORRENTE DO ENCERRAMENTO DA ATIVIDADE DA EMPRESA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000369, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.929', 'LANÇAMENTO EFETUADO EM DECORRÊNCIA DE EMISSÃO DE DOCUMENTO FISCAL RELATIVO A OPERAÇÃO OU PRESTAÇÃO TAMBÉM REGISTRADA EM EQUIPAMENTO EMISSOR DE CUPOM FISCAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000370, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.931', 'LANÇAMENTO EFETUADO EM DECORRÊNCIA DA RESPONSABILIDADE DE RETENÇÃO DO IMPOSTO POR SUBSTITUIÇÃO TRIBUTÁRIA, ATRIBUÍDA AO REMETENTE OU ALIENANTE DA MERCADORIA, PELO SERVIÇO DE TRANSPORTE REALIZADO POR TRANSPORTADOR AUTÔNOMO OU POR TRANSPORTADOR NÃO INSCRITO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000371, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.932', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE INICIADA EM UNIDADE DA FEDERAÇÃO DIVERSA DAQUELA ONDE INSCRITO O PRESTADOR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000372, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.933', 'PRESTAÇÃO DE SERVIÇO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000373, 0, 11, 'Y', sysdate, 100, sysdate, 100, '5.949', 'OUTRA SAÍDA DE MERCADORIA OU PRESTAÇÃO DE SERVIÇO NÃO ESPECIFICADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000374, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.101', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000375, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.102', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000376, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.103', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO, EFETUADA FORA DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000377, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.104', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, EFETUADA FORA DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000378, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.105', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO QUE NÃO DEVA POR ELE TRANSITAR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000379, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.106', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, QUE NÃO DEVA POR ELE TRANSITAR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000380, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.107', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO, DESTINADA A NÃO CONTRIBUINTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000381, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.108', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, DESTINADA A NÃO CONTRIBUINTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000382, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.109', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO, DESTINADA À ZONA FRANCA DE MANAUS OU ÁREAS DE LIVRE COMÉRCIO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000383, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.110', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, DESTINADA À ZONA FRANCA DE MANAUS OU ÁREAS DE LIVRE COMÉRCIO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000384, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.111', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO REMETIDA ANTERIORMENTE EM CONSIGNAÇÃO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000385, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.112', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS REMETIDA ANTERIORMENTE EM CONSIGNAÇÃO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000386, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.113', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO REMETIDA ANTERIORMENTE EM CONSIGNAÇÃO MERCANTIL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000387, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.114', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS REMETIDA ANTERIORMENTE EM CONSIGNAÇÃO MERCANTIL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000388, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.115', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, RECEBIDA ANTERIORMENTE EM CONSIGNAÇÃO MERCANTIL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000389, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.116', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO ORIGINADA DE ENCOMENDA PARA ENTREGA FUTURA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000390, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.117', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, ORIGINADA DE ENCOMENDA PARA ENTREGA FUTURA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000391, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.118', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO ENTREGUE AO DESTINATÁRIO POR CONTA E ORDEM DO ADQUIRENTE ORIGINÁRIO, EM VENDA À ORDEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000392, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.119', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS ENTREGUE AO DESTINATÁRIO POR CONTA E ORDEM DO ADQUIRENTE ORIGINÁRIO, EM VENDA À ORDEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000393, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.120', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS ENTREGUE AO DESTINATÁRIO PELO VENDEDOR REMETENTE, EM VENDA À ORDEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000394, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.122', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO REMETIDA PARA INDUSTRIALIZAÇÃO, POR CONTA E ORDEM DO ADQUIRENTE, SEM TRANSITAR PELO ESTABELECIMENTO DO ADQUIRENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000395, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.123', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS REMETIDA PARA INDUSTRIALIZAÇÃO, POR CONTA E ORDEM DO ADQUIRENTE, SEM TRANSITAR PELO ESTABELECIMENTO DO ADQUIRENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000396, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.124', 'INDUSTRIALIZAÇÃO EFETUADA PARA OUTRA EMPRESA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000397, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.125', 'INDUSTRIALIZAÇÃO EFETUADA PARA OUTRA EMPRESA QUANDO A MERCADORIA RECEBIDA PARA UTILIZAÇÃO NO PROCESSO DE INDUSTRIALIZAÇÃO NÃO TRANSITAR PELO ESTABELECIMENTO ADQUIRENTE DA MERCADORIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000398, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.151', 'TRANSFERÊNCIA DE PRODUÇÃO DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000399, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.152', 'TRANSFERÊNCIA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000400, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.153', 'TRANSFERÊNCIA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000401, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.155', 'TRANSFERÊNCIA DE PRODUÇÃO DO ESTABELECIMENTO, QUE NÃO DEVA POR ELE TRANSITAR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000402, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.156', 'TRANSFERÊNCIA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, QUE NÃO DEVA POR ELE TRANSITAR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000403, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.201', 'DEVOLUÇÃO DE COMPRA PARA INDUSTRIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000404, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.202', 'DEVOLUÇÃO DE COMPRA PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000405, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.205', 'ANULAÇÃO DE VALOR RELATIVO A AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000406, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.206', 'ANULAÇÃO DE VALOR RELATIVO A AQUISIÇÃO DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000407, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.207', 'ANULAÇÃO DE VALOR RELATIVO À COMPRA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000408, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.208', 'DEVOLUÇÃO DE MERCADORIA RECEBIDA EM TRANSFERÊNCIA PARA INDUSTRIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000409, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.209', 'DEVOLUÇÃO DE MERCADORIA RECEBIDA EM TRANSFERÊNCIA PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000410, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.210', 'DEVOLUÇÃO DE COMPRA PARA UTILIZAÇÃO NA PRESTAÇÃO DE SERVIÇO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000411, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.251', 'VENDA DE ENERGIA ELÉTRICA PARA DISTRIBUIÇÃO OU COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000412, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.252', 'VENDA DE ENERGIA ELÉTRICA PARA ESTABELECIMENTO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000413, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.253', 'VENDA DE ENERGIA ELÉTRICA PARA ESTABELECIMENTO COMERCIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000414, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.254', 'VENDA DE ENERGIA ELÉTRICA PARA ESTABELECIMENTO PRESTADOR DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000415, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.255', 'VENDA DE ENERGIA ELÉTRICA PARA ESTABELECIMENTO PRESTADOR DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000416, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.256', 'VENDA DE ENERGIA ELÉTRICA PARA ESTABELECIMENTO DE PRODUTOR RURAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000417, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.257', 'VENDA DE ENERGIA ELÉTRICA PARA CONSUMO POR DEMANDA CONTRATADA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000418, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.258', 'VENDA DE ENERGIA ELÉTRICA A NÃO CONTRIBUINTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000419, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.301', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO PARA EXECUÇÃO DE SERVIÇO DA MESMA NATUREZA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000420, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.302', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO A ESTABELECIMENTO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000421, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.303', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO A ESTABELECIMENTO COMERCIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000422, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.304', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO A ESTABELECIMENTO DE PRESTADOR DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000423, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.305', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO A ESTABELECIMENTO DE GERADORA OU DE DISTRIBUIDORA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000424, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.306', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO A ESTABELECIMENTO DE PRODUTOR RURAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000425, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.307', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO A NÃO CONTRIBUINTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000426, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.351', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE PARA EXECUÇÃO DE SERVIÇO DA MESMA NATUREZA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000427, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.352', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE A ESTABELECIMENTO INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000428, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.353', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE A ESTABELECIMENTO COMERCIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000429, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.354', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE A ESTABELECIMENTO DE PRESTADOR DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000430, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.355', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE A ESTABELECIMENTO DE GERADORA OU DE DISTRIBUIDORA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000431, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.356', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE A ESTABELECIMENTO DE PRODUTOR RURAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000432, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.357', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE A NÃO CONTRIBUINTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000433, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.401', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO EM OPERAÇÃO COM PRODUTO SUJEITO AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA, NA CONDIÇÃO DE CONTRIBUINTE SUBSTITUTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000434, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.402', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO DE PRODUTO SUJEITO AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA, EM OPERAÇÃO ENTRE CONTRIBUINTES SUBSTITUTOS DO MESMO PRODUTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000435, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.403', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA, NA CONDIÇÃO DE CONTRIBUINTE SUBSTITUTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000436, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.404', 'VENDA DE MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA, CUJO IMPOSTO JÁ TENHA SIDO RETIDO ANTERIORMENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000437, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.408', 'TRANSFERÊNCIA DE PRODUÇÃO DO ESTABELECIMENTO EM OPERAÇÃO COM PRODUTO SUJEITO AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000438, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.409', 'TRANSFERÊNCIA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000439, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.410', 'DEVOLUÇÃO DE COMPRA PARA INDUSTRIALIZAÇÃO EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000440, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.411', 'DEVOLUÇÃO DE COMPRA PARA COMERCIALIZAÇÃO EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000441, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.412', 'DEVOLUÇÃO DE BEM DO ATIVO IMOBILIZADO, EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000442, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.413', 'DEVOLUÇÃO DE MERCADORIA DESTINADA AO USO OU CONSUMO, EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000443, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.414', 'REMESSA DE PRODUÇÃO DO ESTABELECIMENTO PARA VENDA FORA DO ESTABELECIMENTO EM OPERAÇÃO COM PRODUTO SUJEITO AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000444, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.415', 'REMESSA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS PARA VENDA FORA DO ESTABELECIMENTO, EM OPERAÇÃO COM MERCADORIA SUJEITA AO REGIME DE SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000445, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.501', 'REMESSA DE PRODUÇÃO DO ESTABELECIMENTO, COM FIM ESPECÍFICO DE EXPORTAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000446, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.502', 'REMESSA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, COM FIM ESPECÍFICO DE EXPORTAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000447, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.503', 'DEVOLUÇÃO DE MERCADORIA RECEBIDA COM FIM ESPECÍFICO DE EXPORTAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000448, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.551', 'VENDA DE BEM DO ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000449, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.552', 'TRANSFERÊNCIA DE BEM DO ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000450, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.553', 'DEVOLUÇÃO DE COMPRA DE BEM PARA O ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000451, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.554', 'REMESSA DE BEM DO ATIVO IMOBILIZADO PARA USO FORA DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000452, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.555', 'DEVOLUÇÃO DE BEM DO ATIVO IMOBILIZADO DE TERCEIRO, RECEBIDO PARA USO NO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000453, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.556', 'DEVOLUÇÃO DE COMPRA DE MATERIAL DE USO OU CONSUMO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000454, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.557', 'TRANSFERÊNCIA DE MATERIAL DE USO OU CONSUMO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000455, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.603', 'RESSARCIMENTO DE ICMS RETIDO POR SUBSTITUIÇÃO TRIBUTÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000456, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.650', 'SAÍDAS DE COMBUSTÍVEIS, DERIVADOS OU NÃO DE PETRÓLEO E LUBRIFICANTES');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000457, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.651', 'VENDA DE COMBUSTÍVEL OU LUBRIFICANTE DE PRODUÇÃO DO ESTABELECIMENTO DESTINADO À INDUSTRIALIZAÇÃO SUBSEQÜENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000458, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.652', 'VENDA DE COMBUSTÍVEL OU LUBRIFICANTE DE PRODUÇÃO DO ESTABELECIMENTO DESTINADO À COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000459, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.653', 'VENDA DE COMBUSTÍVEL OU LUBRIFICANTE DE PRODUÇÃO DO ESTABELECIMENTO DESTINADO A CONSUMIDOR OU USUÁRIO FINAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000460, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.654', 'VENDA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO OU RECEBIDO DE TERCEIROS DESTINADO À INDUSTRIALIZAÇÃO SUBSEQÜENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000461, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.655', 'VENDA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO OU RECEBIDO DE TERCEIROS DESTINADO À COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000462, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.656', 'VENDA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO OU RECEBIDO DE TERCEIROS DESTINADO A CONSUMIDOR OU USUÁRIO FINAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000463, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.657', 'REMESSA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO OU RECEBIDO DE TERCEIROS PARA VENDA FORA DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000464, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.658', 'TRANSFERÊNCIA DE COMBUSTÍVEL OU LUBRIFICANTE DE PRODUÇÃO DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000465, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.659', 'TRANSFERÊNCIA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO OU RECEBIDO DE TERCEIRO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000466, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.660', 'DEVOLUÇÃO DE COMPRA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO PARA INDUSTRIALIZAÇÃO SUBSEQÜENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000467, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.661', 'DEVOLUÇÃO DE COMPRA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000468, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.662', 'DEVOLUÇÃO DE COMPRA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO POR CONSUMIDOR OU USUÁRIO FINAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000469, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.663', 'REMESSA PARA ARMAZENAGEM DE COMBUSTÍVEL OU LUBRIFICANTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000470, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.664', 'RETORNO DE COMBUSTÍVEL OU LUBRIFICANTE RECEBIDO PARA ARMAZENAGEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000471, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.665', 'RETORNO SIMBÓLICO DE COMBUSTÍVEL OU LUBRIFICANTE RECEBIDO PARA ARMAZENAGEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000472, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.666', 'REMESSA POR CONTA E ORDEM DE TERCEIROS DE COMBUSTÍVEL OU LUBRIFICANTE RECEBIDO PARA ARMAZENAGEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000473, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.901', 'REMESSA PARA INDUSTRIALIZAÇÃO POR ENCOMENDA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000474, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.902', 'RETORNO DE MERCADORIA UTILIZADA NA INDUSTRIALIZAÇÃO POR ENCOMENDA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000475, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.903', 'RETORNO DE MERCADORIA RECEBIDA PARA INDUSTRIALIZAÇÃO E NÃO APLICADA NO REFERIDO PROCESSO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000476, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.904', 'REMESSA PARA VENDA FORA DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000477, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.905', 'REMESSA PARA DEPÓSITO FECHADO OU ARMAZÉM GERAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000478, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.906', 'RETORNO DE MERCADORIA DEPOSITADA EM DEPÓSITO FECHADO OU ARMAZÉM GERAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000479, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.907', 'RETORNO SIMBÓLICO DE MERCADORIA DEPOSITADA EM DEPÓSITO FECHADO OU ARMAZÉM GERAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000480, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.908', 'REMESSA DE BEM POR CONTA DE CONTRATO DE COMODATO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000481, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.909', 'RETORNO DE BEM RECEBIDO POR CONTA DE CONTRATO DE COMODATO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000482, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.910', 'REMESSA EM BONIFICAÇÃO, DOAÇÃO OU BRINDE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000483, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.911', 'REMESSA DE AMOSTRA GRÁTIS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000484, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.912', 'REMESSA DE MERCADORIA OU BEM PARA DEMONSTRAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000485, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.913', 'RETORNO DE MERCADORIA OU BEM RECEBIDO PARA DEMONSTRAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000486, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.914', 'REMESSA DE MERCADORIA OU BEM PARA EXPOSIÇÃO OU FEIRA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000487, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.915', 'REMESSA DE MERCADORIA OU BEM PARA CONSERTO OU REPARO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000488, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.916', 'RETORNO DE MERCADORIA OU BEM RECEBIDO PARA CONSERTO OU REPARO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000489, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.917', 'REMESSA DE MERCADORIA EM CONSIGNAÇÃO MERCANTIL OU INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000490, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.918', 'DEVOLUÇÃO DE MERCADORIA RECEBIDA EM CONSIGNAÇÃO MERCANTIL OU INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000491, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.919', 'DEVOLUÇÃO SIMBÓLICA DE MERCADORIA VENDIDA OU UTILIZADA EM PROCESSO INDUSTRIAL, RECEBIDA ANTERIORMENTE EM CONSIGNAÇÃO MERCANTIL OU INDUSTRIAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000492, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.920', 'REMESSA DE VASILHAME OU SACARIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000493, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.921', 'DEVOLUÇÃO DE VASILHAME OU SACARIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000494, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.922', 'LANÇAMENTO EFETUADO A TÍTULO DE SIMPLES FATURAMENTO DECORRENTE DE VENDA PARA ENTREGA FUTURA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000495, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.923', 'REMESSA DE MERCADORIA POR CONTA E ORDEM DE TERCEIROS, EM VENDA À ORDEM');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000496, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.924', 'REMESSA PARA INDUSTRIALIZAÇÃO POR CONTA E ORDEM DO ADQUIRENTE DA MERCADORIA, QUANDO ESTA NÃO TRANSITAR PELO ESTABELECIMENTO DO ADQUIRENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000497, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.925', 'RETORNO DE MERCADORIA RECEBIDA PARA INDUSTRIALIZAÇÃO POR CONTA E ORDEM DO ADQUIRENTE DA MERCADORIA, QUANDO AQUELA NÃO TRANSITAR PELO ESTABELECIMENTO DO ADQUIRENTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000498, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.929', 'LANÇAMENTO EFETUADO EM DECORRÊNCIA DE EMISSÃO DE DOCUMENTO FISCAL RELATIVO A OPERAÇÃO OU PRESTAÇÃO TAMBÉM REGISTRADA EM EQUIPAMENTO EMISSOR DE CUPOM FISCAL');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000499, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.931', 'LANÇAMENTO EFETUADO EM DECORRÊNCIA DA RESPONSABILIDADE DE RETENÇÃO DO IMPOSTO POR SUBSTITUIÇÃO TRIBUTÁRIA, ATRIBUÍDA AO REMETENTE OU ALIENANTE DA MERCADORIA, PELO SERVIÇO DE TRANSPORTE REALIZADO POR TRANSPORTADOR AUTÔNOMO OU POR TRANSPORTADOR NÃO INSCRITO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000500, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.932', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE INICIADA EM UNIDADE DA FEDERAÇÃO DIVERSA DAQUELA ONDE INSCRITO O PRESTADOR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000501, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.933', 'PRESTAÇÃO DE SERVIÇO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000502, 0, 11, 'Y', sysdate, 100, sysdate, 100, '6.949', 'OUTRA SAÍDA DE MERCADORIA OU PRESTAÇÃO DE SERVIÇO NÃO ESPECIFICADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000503, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.101', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000504, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.102', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000505, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.105', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO, QUE NÃO DEVA POR ELE TRANSITAR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000506, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.106', 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS, QUE NÃO DEVA POR ELE TRANSITAR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000507, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.127', 'VENDA DE PRODUÇÃO DO ESTABELECIMENTO SOB O REGIME DE “DRAWBACK”');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000508, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.201', 'DEVOLUÇÃO DE COMPRA PARA INDUSTRIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000509, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.202', 'DEVOLUÇÃO DE COMPRA PARA COMERCIALIZAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000510, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.205', 'ANULAÇÃO DE VALOR RELATIVO À AQUISIÇÃO DE SERVIÇO DE COMUNICAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000511, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.206', 'ANULAÇÃO DE VALOR RELATIVO A AQUISIÇÃO DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000512, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.207', 'ANULAÇÃO DE VALOR RELATIVO À COMPRA DE ENERGIA ELÉTRICA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000513, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.210', 'DEVOLUÇÃO DE COMPRA PARA UTILIZAÇÃO NA PRESTAÇÃO DE SERVIÇO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000514, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.211', 'DEVOLUÇÃO DE COMPRAS PARA INDUSTRIALIZAÇÃO SOB O REGIME DE DRAWBACK”');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000515, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.251', 'VENDA DE ENERGIA ELÉTRICA PARA O EXTERIOR');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000516, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.301', 'PRESTAÇÃO DE SERVIÇO DE COMUNICAÇÃO PARA EXECUÇÃO DE SERVIÇO DA MESMA NATUREZA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000517, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.358', 'PRESTAÇÃO DE SERVIÇO DE TRANSPORTE');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000518, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.501', 'EXPORTAÇÃO DE MERCADORIAS RECEBIDAS COM FIM ESPECÍFICO DE EXPORTAÇÃO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000519, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.551', 'VENDA DE BEM DO ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000520, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.553', 'DEVOLUÇÃO DE COMPRA DE BEM PARA O ATIVO IMOBILIZADO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000521, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.556', 'DEVOLUÇÃO DE COMPRA DE MATERIAL DE USO OU CONSUMO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000522, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.650', 'SAÍDAS DE COMBUSTÍVEIS, DERIVADOS OU NÃO DE PETRÓLEO E LUBRIFICANTES');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000523, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.651', 'VENDA DE COMBUSTÍVEL OU LUBRIFICANTE DE PRODUÇÃO DO ESTABELECIMENTO');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000524, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.654', 'VENDA DE COMBUSTÍVEL OU LUBRIFICANTE ADQUIRIDO OU RECEBIDO DE TERCEIROS');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000525, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.930', 'LANÇAMENTO EFETUADO A TÍTULO DE DEVOLUÇÃO DE BEM CUJA ENTRADA TENHA OCORRIDO SOB AMPARO DE REGIME ESPECIAL ADUANEIRO DE ADMISSÃO TEMPORÁRIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000526, 0, 11, 'Y', sysdate, 100, sysdate, 100, '7.949', 'REMESSA EM CORTESIA');
INSERT INTO ADEMPIERE.LBR_CFOP(lbr_cfop_id, ad_org_id, ad_client_id, isactive, created, createdby, updated, updatedby, value, description)
  VALUES(1000527, 0, 11, 'Y', sysdate, 100, sysdate, 100, 'Z.ZZZ', 'NÃO APLICÁVEL');

SELECT lbr_register_migration_script('201402171436.sql') FROM dual
;

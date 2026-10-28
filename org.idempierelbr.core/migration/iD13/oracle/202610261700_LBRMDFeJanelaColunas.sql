-- Janela Manifesto Eletronico: posicao e largura dos campos.
SELECT register_migration_script('202610261700_LBRMDFeJanelaColunas.sql') FROM dual;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- Os campos ficaram com XPosition=1 e ColumnSpan=1, e o formulario saia com
-- duas colunas: rotulos e botoes na metade esquerda, campos na direita.
-- Aqui vai o leiaute de 6 colunas do Pedido de Venda: IsSameLine='N' fica a
-- esquerda, IsSameLine='Y' a direita; botao e checkbox, sem rotulo, comecam
-- uma coluna depois; texto longo ocupa a linha inteira. Campos de outra
-- EntityType (customizacao do cliente) ficam como estao.

-- Botoes de evento: um embaixo do outro, a esquerda.
UPDATE AD_Field SET IsSameLine='N',
       Updated=TO_TIMESTAMP('2026-10-26 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Field_ID IN (802752,802753,802754)
;

UPDATE AD_Field SET XPosition=CASE IsSameLine WHEN 'Y' THEN 4 ELSE 1 END, ColumnSpan=2,
       Updated=TO_TIMESTAMP('2026-10-26 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Window_ID=800038)
   AND EntityType='LBR'
;

-- Sem rotulo: checkbox (20) e botao (28)
UPDATE AD_Field SET XPosition=CASE IsSameLine WHEN 'Y' THEN 5 ELSE 2 END,
       Updated=TO_TIMESTAMP('2026-10-26 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Window_ID=800038)
   AND EntityType='LBR'
   AND (IsFieldOnly='Y'
        OR AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Reference_ID IN (20,28)))
;

-- Texto longo: Text (14), Memo (34) e Text Long (36)
UPDATE AD_Field SET XPosition=1, ColumnSpan=5,
       Updated=TO_TIMESTAMP('2026-10-26 17:00:00','YYYY-MM-DD HH24:MI:SS'), UpdatedBy=100
 WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Window_ID=800038)
   AND EntityType='LBR'
   AND AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Reference_ID IN (14,34,36))
;

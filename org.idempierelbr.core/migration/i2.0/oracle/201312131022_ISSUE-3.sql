-- Dec 13, 2013 10:21:20 AM BRST
-- ISSUE-3 Armazenar registro do Último script executado
-- Dec 13, 2013 12:57:43 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_LastMigrationScriptApplied',1000001,'LBR Last Migration Script Applied','Register of the filename for the last migration script applied on this database','Last Migration Script Applied','224be587-28e7-42e9-a14e-7ca25e1e4bcb',TO_DATE('2013-12-13 12:57:43','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2013-12-13 12:57:43','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Dec 13, 2013 12:58:20 PM BRST
INSERT INTO AD_Column (IsSyncDatabase,Version,AD_Table_ID,AD_Column_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,AD_Reference_ID,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,AD_Element_ID,IsSecure) VALUES ('N',0,531,1000001,'N','N','N',0,'N',255,'N',10,'N','N','Y','fc72aff0-1613-4ca6-83f4-1458bc49f5dc','Y','LBR_LastMigrationScriptApplied','Register of the filename for the last migration script applied on this database','Last Migration Script Applied','Y',TO_DATE('2013-12-13 12:58:20','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',TO_DATE('2013-12-13 12:58:20','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'LBR','N',1000001,'N')
;

-- Dec 13, 2013 12:58:27 PM BRST
ALTER TABLE AD_System ADD LBR_LastMigrationScriptApplied NVARCHAR2(255) DEFAULT NULL 
;

-- Dec 13, 2013 12:59:39 PM BRST
INSERT INTO AD_Element (ColumnName,AD_Element_ID,Name,Description,PrintName,AD_Element_UU,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive,AD_Client_ID,EntityType) VALUES ('LBR_ReleaseNo',1000002,'LBR Release No','Internal Release Number','Release No','168985ea-d61d-42be-aa08-bcf3e103186d',TO_DATE('2013-12-13 12:59:39','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2013-12-13 12:59:39','YYYY-MM-DD HH24:MI:SS'),0,0,0,'Y',0,'LBR')
;

-- Dec 13, 2013 1:03:12 PM BRST
INSERT INTO AD_Reference (AD_Reference_ID,Help,Name,EntityType,AD_Reference_UU,IsOrderByValue,Description,ValidationType,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES (1000000,'Indicates what release the package is for.  Entering no specific release indicates the package is for all releases.','LBR_Package_Releases','LBR','050a1289-4030-4328-b311-6a330e1cd8ae','N','List of Package Releases (iDempiereLBR)','L',0,0,TO_DATE('2013-12-13 13:03:12','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2013-12-13 13:03:12','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- Dec 13, 2013 1:04:04 PM BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Description,Name,AD_Ref_List_UU,Value,Created,CreatedBy,Updated,UpdatedBy,IsActive,AD_Org_ID,AD_Client_ID,EntityType) VALUES (1000000,1000000,'No specific release','No specific release','2facadde-7b9b-4619-9161-8f9fe50b2b19','all',TO_DATE('2013-12-13 13:04:04','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-13 13:04:04','YYYY-MM-DD HH24:MI:SS'),0,'Y',0,0,'LBR')
;

-- Dec 13, 2013 1:04:32 PM BRST
INSERT INTO AD_Column (IsSyncDatabase,Version,AD_Table_ID,AD_Column_ID,AD_Reference_Value_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,AD_Reference_ID,IsKey,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsUpdateable,ColumnName,Description,Name,IsAllowCopy,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,IsToolbarButton,IsAlwaysUpdateable,AD_Client_ID,EntityType,IsEncrypted,AD_Element_ID,IsSecure) VALUES ('N',1,531,1000002,1000000,'N','N','N',0,'N',20,'N',17,'N','N','Y','300bf1a2-9a69-4b9e-8b34-846bcaca6979','Y','LBR_ReleaseNo','Internal Release Number','Release No','Y',TO_DATE('2013-12-13 13:04:32','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',TO_DATE('2013-12-13 13:04:32','YYYY-MM-DD HH24:MI:SS'),0,'N','N',0,'LBR','N',1000002,'N')
;

-- Dec 13, 2013 1:04:39 PM BRST
ALTER TABLE AD_System ADD LBR_ReleaseNo NVARCHAR2(20) DEFAULT NULL 
;

-- Dec 13, 2013 1:21:49 PM BRST
INSERT INTO AD_Field (SortNo,IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,AD_Column_ID,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus) VALUES (0,'N',440,40,'N','N',1000001,300,'Y',1000001,'N','LBR','Register of the filename for the last migration script applied on this database','LBR Last Migration Script Applied','5c078c06-bcf4-45aa-939c-000af922241c','N','Y',0,0,TO_DATE('2013-12-13 13:21:49','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-13 13:21:49','YYYY-MM-DD HH24:MI:SS'),'Y','Y',290,1,'N',0,5,1,'N','N')
;

-- Dec 13, 2013 1:23:20 PM BRST
INSERT INTO AD_FieldGroup (FieldGroupType,EntityType,IsCollapsedByDefault,Name,AD_FieldGroup_UU,AD_FieldGroup_ID,Created,CreatedBy,Updated,AD_Org_ID,UpdatedBy,IsActive,AD_Client_ID) VALUES ('C','LBR','N','Localização Brasil','12c499cb-64e4-44b5-87e2-7b0fae45876c',1000000,TO_DATE('2013-12-13 13:23:20','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-13 13:23:20','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',0)
;

-- Dec 13, 2013 1:23:41 PM BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_DATE('2013-12-13 13:23:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1000001
;

-- Dec 13, 2013 1:25:28 PM BRST
INSERT INTO AD_Field (IsEncrypted,AD_Tab_ID,DisplayLength,IsSameLine,IsHeading,AD_Column_ID,SeqNo,IsCentrallyMaintained,AD_Field_ID,IsReadOnly,EntityType,Description,Name,AD_Field_UU,IsFieldOnly,IsDisplayed,UpdatedBy,AD_Org_ID,Created,CreatedBy,Updated,IsActive,IsDisplayedGrid,SeqNoGrid,XPosition,IsQuickEntry,AD_Client_ID,ColumnSpan,NumLines,IsAdvancedField,IsDefaultFocus) VALUES ('N',440,5,'N','N',1000002,310,'Y',1000002,'Y','LBR','Internal Release Number','LBR Release No','6e3c9d24-ef38-4fd6-8d99-2ef4df423726','N','Y',0,0,TO_DATE('2013-12-13 13:25:28','YYYY-MM-DD HH24:MI:SS'),0,TO_DATE('2013-12-13 13:25:28','YYYY-MM-DD HH24:MI:SS'),'Y','Y',80,1,'N',0,2,1,'N','N')
;

-- Dec 13, 2013 1:23:41 PM BRST
UPDATE AD_System SET LBR_ReleaseNo='1.0',Updated=TO_DATE('2013-12-13 13:23:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_System_ID=0
;

CREATE OR REPLACE FUNCTION lbr_register_migration_script
(
    p_script IN VARCHAR2
)
RETURN VARCHAR2
IS
    PRAGMA AUTONOMOUS_TRANSACTION;
    v_return VARCHAR2(255);
    v_scriptid INTEGER;
BEGIN
    v_return := p_script || ' successfully registered';
    UPDATE AD_System
      SET LBR_LastMigrationScriptApplied=p_script
    WHERE LBR_LastMigrationScriptApplied<p_script
       OR LBR_LastMigrationScriptApplied IS NULL;
    SELECT MAX(AD_MigrationScript_ID)
	INTO v_scriptid
        FROM AD_MigrationScript
	WHERE Name = p_script;
    IF (v_scriptid IS NULL)
    THEN
        INSERT INTO ad_migrationscript 
            (isapply, scriptroll, ad_migrationscript_uu, 
             status, projectname, releaseno, 
             name, filename, ad_client_id, 
             ad_org_id, created, createdby, 
             updated, updatedby, isactive, 
             ad_migrationscript_id) 
        VALUES
            ('Y', 'N', generate_uuid(),
             'CO', 'iDempiereLBR', (select lbr_releaseno from ad_system), 
             p_script, 'oracle/'||p_script, 0, 
             0, SYSDATE, 100, 
             SYSDATE, 100, 'Y', 
             nextidfunc(53081,'N')); 
    ELSE
        v_return := p_script || ' was already applied';
        DBMS_OUTPUT.PUT_LINE(v_return);
	UPDATE ad_migrationscript
	    SET updated=SYSDATE, description = COALESCE(description, ' ') || ' reapplied'
	    WHERE ad_migrationscript_id = v_scriptid;
    END IF;
    COMMIT;
    RETURN v_return;
END lbr_register_migration_script;
/

SELECT lbr_register_migration_script('201312121023_ISSUE-1.sql') FROM dual
;

SELECT lbr_register_migration_script('201312121304_ISSUE-2.sql') FROM dual
;

SELECT lbr_register_migration_script('201312131022_ISSUE-3.sql') FROM dual
;


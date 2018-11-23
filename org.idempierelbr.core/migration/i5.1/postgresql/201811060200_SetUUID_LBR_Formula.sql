UPDATE lbr_formula SET lbr_formula_uu='5e320f70-45f1-49b1-9022-4163cca7e0ba' WHERE lbr_formula_id=1000000 AND coalesce(lbr_formula_uu,'')!='5e320f70-45f1-49b1-9022-4163cca7e0ba';
UPDATE lbr_formula SET lbr_formula_uu='392d629f-c9bb-4f47-9034-bb973884742b' WHERE lbr_formula_id=1000001 AND coalesce(lbr_formula_uu,'')!='392d629f-c9bb-4f47-9034-bb973884742b';
UPDATE lbr_formula SET lbr_formula_uu='5d1f31a6-f59f-45be-8cae-6e773117c928' WHERE lbr_formula_id=1000002 AND coalesce(lbr_formula_uu,'')!='5d1f31a6-f59f-45be-8cae-6e773117c928';
UPDATE lbr_formula SET lbr_formula_uu='5fb901e4-8d94-47a3-ba1a-ccacd85e1f3b' WHERE lbr_formula_id=1000003 AND coalesce(lbr_formula_uu,'')!='5fb901e4-8d94-47a3-ba1a-ccacd85e1f3b';
UPDATE lbr_formula SET lbr_formula_uu='e3500159-d566-4a78-96bf-c7ce67ce481b' WHERE lbr_formula_id=1000004 AND coalesce(lbr_formula_uu,'')!='e3500159-d566-4a78-96bf-c7ce67ce481b';
UPDATE lbr_formula SET lbr_formula_uu='a2ecfe78-1267-402a-89f8-8f8e9047c63e' WHERE lbr_formula_id=1000005 AND coalesce(lbr_formula_uu,'')!='a2ecfe78-1267-402a-89f8-8f8e9047c63e';
UPDATE lbr_formula SET lbr_formula_uu='4ed343b5-cc39-4410-a1da-f92e76f7b174' WHERE lbr_formula_id=1000006 AND coalesce(lbr_formula_uu,'')!='4ed343b5-cc39-4410-a1da-f92e76f7b174';
UPDATE lbr_formula SET lbr_formula_uu='97f636f0-009b-426f-9601-57138e3332ce' WHERE lbr_formula_id=1000007 AND coalesce(lbr_formula_uu,'')!='97f636f0-009b-426f-9601-57138e3332ce';
UPDATE lbr_formula SET lbr_formula_uu='b79b7ea8-eab4-4433-af3a-4f2ddcfcfab0' WHERE lbr_formula_id=1000008 AND coalesce(lbr_formula_uu,'')!='b79b7ea8-eab4-4433-af3a-4f2ddcfcfab0';
UPDATE lbr_formula SET lbr_formula_uu='55a7d977-ff45-4799-8670-2d0e8932e7c1' WHERE lbr_formula_id=1000009 AND coalesce(lbr_formula_uu,'')!='55a7d977-ff45-4799-8670-2d0e8932e7c1';
UPDATE lbr_formula SET lbr_formula_uu='f21b5d74-1601-43da-8477-53286ba06872' WHERE lbr_formula_id=1000010 AND coalesce(lbr_formula_uu,'')!='f21b5d74-1601-43da-8477-53286ba06872';
UPDATE lbr_formula SET lbr_formula_uu='10627337-fdb1-4d53-b491-ee59c619f4f7' WHERE lbr_formula_id=1000011 AND coalesce(lbr_formula_uu,'')!='10627337-fdb1-4d53-b491-ee59c619f4f7';
UPDATE lbr_formula SET lbr_formula_uu='810da4cf-a1cc-4771-b1da-051cbaef7974' WHERE lbr_formula_id=1000013 AND coalesce(lbr_formula_uu,'')!='810da4cf-a1cc-4771-b1da-051cbaef7974';
UPDATE lbr_formula SET lbr_formula_uu='206aafa6-6d5a-4a02-91ae-ddd9236a3085' WHERE lbr_formula_id=1000014 AND coalesce(lbr_formula_uu,'')!='206aafa6-6d5a-4a02-91ae-ddd9236a3085';
UPDATE lbr_formula SET lbr_formula_uu='d8c758de-87b6-40f0-8490-d57b2b8caa91' WHERE lbr_formula_id=1000015 AND coalesce(lbr_formula_uu,'')!='d8c758de-87b6-40f0-8490-d57b2b8caa91';
UPDATE lbr_formula SET lbr_formula_uu='b5392c8d-5621-4ad9-a8bd-9fcdb635a15f' WHERE lbr_formula_id=1000016 AND coalesce(lbr_formula_uu,'')!='b5392c8d-5621-4ad9-a8bd-9fcdb635a15f';

SELECT lbr_register_migration_script('201811060200_SetUUID_LBR_Formula.sql') FROM dual;

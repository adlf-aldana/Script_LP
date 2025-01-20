SELECT * 
FROM forms
ORDER BY creation_date DESC ;

SELECT * 
FROM forms
WHERE id_client = 133769;

DELETE forms
WHERE id_client = 133769
AND id = '42f0e6d7-8ff3-42fd-8dd4-52fe0377f3a8';--42f0e6d7-8ff3-42fd-8dd4-52fe0377f3a8

SELECT *
FROM users 
WHERE login = 'CES';

SELECT *
FROM users 
WHERE login = 'ZFM';

UPDATE users
SET password= '$2a$10$aGkH9zKQxtW1qlBqcTW4deZ8qvc/6t7JNTAvEjvSmHAanO/5f4KT6',
create_date = '2022-08-29',
state='RESET'
WHERE login = 'ZFM';

UPDATE users
SET create_date = '2022-08-22'
WHERE login = 'ZFM';

UPDATE users
SET state='RESET'
WHERE login = 'ZFM';

SELECT *
FROM gbage 
WHERE gbagecage = 361930;

/**/
INSERT INTO forms (id,id_client,id_account,name_type_form,category_type_form,product,reference,description,state,linking_account,is_final_beneficiary,beneficiary,services,operations,accounts,debit_account,reasons_detail,card_number,max_amount,max_extension_amount,currency,id_card_for_verification,creation_date,creation_time,created_by,id_user,name_client_vinculation,document_client_vinculation,user_digital_bank,account_service_operation,source_founds,origin_module) VALUES ('e8ef305f-8598-4b0f-87e4-50efac36c003',356284,'3051936068','FORMULARIO APERTURA','CAJA-AHORRO',NULL,NULL,NULL,NULL,'TITULAR','SI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'ahorros como encargada de oficina en ine','AUTO-FORM');
INSERT INTO forms (id,id_client,id_account,name_type_form,category_type_form,product,reference,description,state,linking_account,is_final_beneficiary,beneficiary,services,operations,accounts,debit_account,reasons_detail,card_number,max_amount,max_extension_amount,currency,id_card_for_verification,creation_date,creation_time,created_by,id_user,name_client_vinculation,document_client_vinculation,user_digital_bank,account_service_operation,source_founds,origin_module) VALUES ('134da719-e96d-4518-aa0c-0e9c39259506',356284,'3051936068','FORMULARIO APERTURA','CAJA-AHORRO',NULL,NULL,NULL,NULL,'TITULAR','SI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'ahorros como encargada de oficina en ine','AUTO-FORM');
INSERT INTO forms (id,id_client,id_account,name_type_form,category_type_form,product,reference,description,state,linking_account,is_final_beneficiary,beneficiary,services,operations,accounts,debit_account,reasons_detail,card_number,max_amount,max_extension_amount,currency,id_card_for_verification,creation_date,creation_time,created_by,id_user,name_client_vinculation,document_client_vinculation,user_digital_bank,account_service_operation,source_founds,origin_module) VALUES ('accd823d-6d28-4514-af59-f646ac293c47',356284,'3051936068','FORMULARIO APERTURA','CAJA-AHORRO',NULL,NULL,NULL,NULL,'TITULAR','SI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'ahorros como encargada de oficina en ine','AUTO-FORM');
INSERT INTO forms (id,id_client,id_account,name_type_form,category_type_form,product,reference,description,state,linking_account,is_final_beneficiary,beneficiary,services,operations,accounts,debit_account,reasons_detail,card_number,max_amount,max_extension_amount,currency,id_card_for_verification,creation_date,creation_time,created_by,id_user,name_client_vinculation,document_client_vinculation,user_digital_bank,account_service_operation,source_founds,origin_module) VALUES ('e6eb7ca9-1b66-4071-8722-da2316b99b2f',356284,'3051936068','FORMULARIO APERTURA','CAJA-AHORRO',NULL,NULL,NULL,NULL,'TITULAR','SI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'ahorros como encargada de oficina en ine','AUTO-FORM');
INSERT INTO forms (id,id_client,id_account,name_type_form,category_type_form,product,reference,description,state,linking_account,is_final_beneficiary,beneficiary,services,operations,accounts,debit_account,reasons_detail,card_number,max_amount,max_extension_amount,currency,id_card_for_verification,creation_date,creation_time,created_by,id_user,name_client_vinculation,document_client_vinculation,user_digital_bank,account_service_operation,source_founds,origin_module) VALUES ('86792189-f178-4074-9a2b-5fecdf1a4d02',356284,'3051936068','FORMULARIO APERTURA','CAJA-AHORRO',NULL,NULL,NULL,NULL,'TITULAR','SI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'ahorros como encargada de oficina en ine','AUTO-FORM');
INSERT INTO forms (id,id_client,id_account,name_type_form,category_type_form,product,reference,description,state,linking_account,is_final_beneficiary,beneficiary,services,operations,accounts,debit_account,reasons_detail,card_number,max_amount,max_extension_amount,currency,id_card_for_verification,creation_date,creation_time,created_by,id_user,name_client_vinculation,document_client_vinculation,user_digital_bank,account_service_operation,source_founds,origin_module) VALUES ('efe34717-e5fc-426f-bec6-8e6b77e2eb9b',356284,'3051936068','FORMULARIO APERTURA','CAJA-AHORRO',NULL,NULL,NULL,NULL,'TITULAR','SI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'ahorros como encargada de oficina en ine','AUTO-FORM');
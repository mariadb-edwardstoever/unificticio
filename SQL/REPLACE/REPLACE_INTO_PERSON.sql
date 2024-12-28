/* SCRIPT BY EDWARD STOEVER OF MARIADB SUPPORT */
use unificticio;

select f_random_enum('br20814753,ra89844425,di92877397,ke87474215,de37979952,ko77853999,ra96329592,co38643119,ca25406303,ke69570528,ve95198025,ma38876916,ta10929854,mi87248232,po30425243,se58761004,mc26020010,la88113569,de19199231,al19746319,pe20613442,el98706434,du50834411,br28388725,da82859389,wa81978714,am58885161,me97449628,ga83836601,st99236320,ka24019430,ga46371269,be18213813,pe41479768,ho33359656,li85489961,ri14135695,gi36219600,go96708082,ro39010426,cr60256168,vi28865513,sa94280943,ne94235190,sl15777648,cr26888033,li86287828,ba65088054,mc16105782,et71136956') into @EXISTING_PERS_ID;
select pers_first_name into @EXISTING_FIRST_NAME from PERSONS where pers_id=@EXISTING_PERS_ID;
select pers_middle_name into @EXISTING_MIDDLE_NAME from PERSONS where pers_id=@EXISTING_PERS_ID;
select f_random_last_name() into @NEW_LAST_NAME;
select pers_external_id_type into @EXISTING_EXTERNAL_ID_TYPE from PERSONS where pers_id=@EXISTING_PERS_ID;
select pers_external_id_number into @EXISTING_EXTERNAL_ID_NUMBER from PERSONS where pers_id=@EXISTING_PERS_ID;
select pers_date_of_birth into @EXISTING_DATE_OF_BIRTH from PERSONS where pers_id=@EXISTING_PERS_ID;
select pers_created into @EXISTING_PERS_CREATED from PERSONS where pers_id=@EXISTING_PERS_ID;
select now() into @NEW_PERS_UPDATED;


REPLACE INTO PERSONS (pers_id,pers_first_name,pers_middle_name,pers_last_name,pers_external_id_type,pers_external_id_number,pers_date_of_birth,pers_created,pers_updated)
VALUES
(@EXISTING_PERS_ID,@EXISTING_FIRST_NAME,@EXISTING_MIDDLE_NAME,@NEW_LAST_NAME,@EXISTING_EXTERNAL_ID_TYPE,@EXISTING_EXTERNAL_ID_NUMBER,@EXISTING_DATE_OF_BIRTH,@EXISTING_PERS_CREATED,@NEW_PERS_UPDATED);

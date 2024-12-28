/* SCRIPT BY EDWARD STOEVER OF MARIADB SUPPORT */
use unificticio;

delimiter //
begin not atomic
declare x integer;
set x = f_random_integer(1,10);

if x=5 then

  select concat('lock table ACADEMIC_FIELDS write;') into @MY_SCRIPT_1;
  select concat('unlock tables;') into @MY_SCRIPT_2;
  PREPARE stmt1 FROM @MY_SCRIPT_1;
  PREPARE stmt2 FROM @MY_SCRIPT_2;
  EXECUTE stmt1;
  EXECUTE stmt2;
  DEALLOCATE PREPARE stmt1;
  DEALLOCATE PREPARE stmt2;

end if;

end;
//
delimiter ;


/* SCRIPT BY EDWARD STOEVER OF MARIADB SUPPORT */
use unificticio;


set @PDISC ='NONE';

select pers_id into @PERSID from PERSONS order by rand() limit 1;

select  acaf_discipline into @PDISC from 
STUDENTS 
INNER JOIN ACADEMIC_FIELDS on (STUDENTS.stud_academic_field=ACADEMIC_FIELDS.acaf_id)
where stud_pers_id=@PERSID;

delimiter //
begin not atomic

  if @PDISC = 'NONE' then
    set @PDISC=f_random_enum('compsci,compsci,compsci,compsci,design,design,design,design,design,engtech,environ,lingo,math,math,math,transport,transport');
  end if;

end;
//
delimiter ;

set @LASTDAY=date('2999-01-01');

INSERT INTO PROFESSORS (prof_pers_id, prof_principal_discipline, prof_last_day_employed, prof_created, prof_updated)
VALUES
(@PERSID, @PDISC, @LASTDAY, now(), now());

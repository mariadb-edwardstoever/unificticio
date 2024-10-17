/* SCRIPT BY EDWARD STOEVER OF MARIADB SUPPORT */

select PERSONS.pers_id, pers_first_name, pers_middle_name, pers_last_name, prof_principal_discipline, stud_academic_field
from PERSONS 
INNER JOIN STUDENTS on (PERSONS.pers_id=STUDENTS.stud_pers_id)
INNER JOIN PROFESSORS on (PERSONS.pers_id=PROFESSORS.prof_pers_id);




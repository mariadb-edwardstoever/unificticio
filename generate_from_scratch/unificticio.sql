create schema unificticio;
use unificticio;

drop table if exists DISCIPLINES;
create table DISCIPLINES(
 disc_id varchar(10) primary key,
 disc_title varchar(100),
 disc_description varchar(300),
 disc_created datetime,
 disc_updated datetime);
 
 truncate table DISCIPLINES;
 insert into DISCIPLINES VALUES ('compsci','Computer Science',f_random_ipsum(f_random_integer(50,100)),now(),now());
 insert into DISCIPLINES VALUES ('engtech','Engineering and Technology',f_random_ipsum(f_random_integer(50,100)),now(),now());
 insert into DISCIPLINES VALUES ('math','Matematics',f_random_ipsum(f_random_integer(50,100)),now(),now());
 insert into DISCIPLINES VALUES ('environ','Environmental Studies',f_random_ipsum(f_random_integer(50,100)),now(),now());
 insert into DISCIPLINES VALUES ('design','Architecture and Design',f_random_ipsum(f_random_integer(50,100)),now(),now());
 insert into DISCIPLINES VALUES ('transport','Transportation',f_random_ipsum(f_random_integer(50,100)),now(),now());
 insert into DISCIPLINES VALUES ('lingo','Linguistics',f_random_ipsum(f_random_integer(50,100)),now(),now());

 drop table if exists ACADEMIC_FIELDS;
create table ACADEMIC_FIELDS (
  acaf_id varchar(10) primary key,
  acaf_discipline varchar(10),
  acaf_title varchar(100),
  acaf_description varchar(300),
  acaf_created datetime,
  acaf_updated datetime,
  CONSTRAINT `fk_acaf_disc` FOREIGN KEY (`acaf_discipline`) REFERENCES DISCIPLINES(`disc_id`));
  
  truncate table ACADEMIC_FIELDS;
  insert into ACADEMIC_FIELDS values ('logic','compsci','Logic in Computer Science',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('algo','compsci','Algorithms',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('artintel','compsci','Artificial Intelligence',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('datastr','compsci','Data Structures',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('comparch','compsci','Computer Architecture',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('compgraph','compsci','Computer Graphics',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('compcomm','compsci','Computer Communications',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('compsec','compsci','Computer Security',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('compinsci','compsci','Computing in Sciences',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('chemeng','engtech','Chemical Engineering',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('bioeng','engtech','Bio Engineering',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('mateng','engtech','Materials Engineering',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('civeng','engtech','Civil Engineering',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('eleceng','engtech','Electrical Engineering',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('mecheng','engtech','Mechanical Engineering',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('aeroeng','engtech','Aerospace Engineering',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('logic','math','Mathematical Logic',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('arith','math','Arithmetic',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('alg','math','Algebra',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('analysis','math','Analysis',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('probtheory','math','Probablility Theory',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('geom','math','Geometry',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('calc','math','Calculus',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('numtheo','math','Number Theory',f_random_ipsum(f_random_integer(50,100)),now(),now());

  insert into ACADEMIC_FIELDS values ('envman','environ','Environmental Management',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('envpol','environ','Environmental policy',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('eco','environ','Ecology',f_random_ipsum(f_random_integer(50,100)),now(),now());
  
  insert into ACADEMIC_FIELDS values ('intarch','design','Interior Architecture',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('landarch','design','Landscape Architecture',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('strucarch','design','Structural Architecture',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('fdesign','design','Fashion Design',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('indesign','design','Industrial Design',f_random_ipsum(f_random_integer(50,100)),now(),now());
  
  insert into ACADEMIC_FIELDS values ('rdsafety','transport','Road Safety',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('infograph','transport','Infographics',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('logistic','transport','Logistics',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('marine','transport','Marine Transportation',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('masstrans','transport','Mass Transit',f_random_ipsum(f_random_integer(50,100)),now(),now());
  
  insert into ACADEMIC_FIELDS values ('applingo','lingo','Applied Linguistics',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('english','lingo','English Studies',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('histlingo','lingo','Historical Linguistics',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('lexico','lingo','Lexicology',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('phonetics','lingo','Phonetics',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('syntax','lingo','Syntax',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('semant','lingo','Semantics',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('french','lingo','French',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('spanish','lingo','Spanish',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('german','lingo','German',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('portug','lingo','Portuguese',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('chinese','lingo','Mandarin Chinese',f_random_ipsum(f_random_integer(50,100)),now(),now());
  insert into ACADEMIC_FIELDS values ('arabic','lingo','Arabic',f_random_ipsum(f_random_integer(50,100)),now(),now());
  

drop table if exists SEMESTERS;
create table SEMESTERS (
 smes_id varchar(10) primary key,
 smes_title varchar(100),
 smes_start_date date,
 smes_end_date date,
 smes_created datetime,
 smes_updated datetime
);

truncate table SEMESTERS;
set @MYDATE=f_random_datetime(-4000000,-3900000);
insert into SEMESTERS values('F2019','FALL 2019','2019-08-30','2019-12-20',@MYDATE,@MYDATE);
-- 2020
set @MYDATE= f_random_datetime(-2890000,-2850000);
insert into SEMESTERS values('S2020','SPRING 2020','2020-01-27','2020-06-05',@MYDATE,@MYDATE);
insert into SEMESTERS values('M2020','SUMMER 2020','2020-06-22','2020-08-14',@MYDATE,@MYDATE);
insert into SEMESTERS values('F2020','FALL 2020',  '2020-08-31','2020-12-18',@MYDATE,@MYDATE);
-- 2021
set @MYDATE= f_random_datetime(-2590000,-2550000);
insert into SEMESTERS values('S2021','SPRING 2021','2021-01-27','2021-06-05',@MYDATE,@MYDATE);
insert into SEMESTERS values('M2021','SUMMER 2021','2021-06-22','2021-08-14',@MYDATE,@MYDATE);
insert into SEMESTERS values('F2021','FALL 2021',  '2021-08-31','2021-12-18',@MYDATE,@MYDATE);
-- 2022
set @MYDATE=f_random_datetime(-2190000,-2150000);
insert into SEMESTERS values('S2022','SPRING 2022','2022-01-22','2022-06-03',@MYDATE,@MYDATE);
insert into SEMESTERS values('M2022','SUMMER 2022','2022-06-20','2022-08-18',@MYDATE,@MYDATE);
insert into SEMESTERS values('F2022','FALL 2022',  '2022-08-30','2022-12-11',@MYDATE,@MYDATE);
-- 2023
set @MYDATE=f_random_datetime(-2000000,-1950000);
insert into SEMESTERS values('S2023','SPRING 2023','2023-01-27','2023-06-01',@MYDATE,@MYDATE);
insert into SEMESTERS values('M2023','SUMMER 2023','2023-06-21','2023-08-11',@MYDATE,@MYDATE);
insert into SEMESTERS values('F2023','FALL 2023',  '2023-08-22','2023-12-16',@MYDATE,@MYDATE);
-- 2024
set @MYDATE=f_random_datetime(-1800000,-1750000);
insert into SEMESTERS values('S2024','SPRING 2024','2024-01-27','2024-06-01',@MYDATE,@MYDATE);
insert into SEMESTERS values('M2024','SUMMER 2024','2024-06-25','2024-08-12',@MYDATE,@MYDATE);
insert into SEMESTERS values('F2024','FALL 2024',  '2024-08-23','2024-12-11',@MYDATE,@MYDATE);
-- 2025
set @MYDATE=f_random_datetime(-1500000,-1450000);
insert into SEMESTERS values('S2025','SPRING 2025','2025-01-27','2025-06-02',@MYDATE,@MYDATE);
insert into SEMESTERS values('M2025','SUMMER 2025','2025-06-26','2025-08-13',@MYDATE,@MYDATE);
insert into SEMESTERS values('F2025','FALL 2025',  '2025-08-25','2025-12-14',@MYDATE,@MYDATE);
-- 2026
set @MYDATE=f_random_datetime(-1000000,-950000);
insert into SEMESTERS values('S2026','SPRING 2026','2026-01-27','2026-06-06',@MYDATE,@MYDATE);
insert into SEMESTERS values('M2026','SUMMER 2026','2026-06-20','2026-08-18',@MYDATE,@MYDATE);
insert into SEMESTERS values('F2026','FALL 2026',  '2026-08-22','2026-12-12',@MYDATE,@MYDATE);
-- 2027
set @MYDATE=f_random_datetime(-950000,-850000);
insert into SEMESTERS values('S2027','SPRING 2027','2027-01-27','2027-06-06',@MYDATE,@MYDATE);
insert into SEMESTERS values('M2027','SUMMER 2027','2027-06-20','2027-08-18',@MYDATE,@MYDATE);
insert into SEMESTERS values('F2027','FALL 2027',  '2027-08-22','2027-12-12',@MYDATE,@MYDATE);
-- 2028
set @MYDATE=f_random_datetime(-850000,-750000);
insert into SEMESTERS values('S2028','SPRING 2028','2028-01-27','2028-06-06',@MYDATE,@MYDATE);
insert into SEMESTERS values('M2028','SUMMER 2028','2028-06-20','2028-08-18',@MYDATE,@MYDATE);
insert into SEMESTERS values('F2028','FALL 2028',  '2028-08-22','2028-12-12',@MYDATE,@MYDATE);
-- 2029
set @MYDATE=f_random_datetime(-750000,-450000);
insert into SEMESTERS values('S2029','SPRING 2029','2029-01-27','2029-06-06',@MYDATE,@MYDATE);
insert into SEMESTERS values('M2029','SUMMER 2029','2029-06-20','2029-08-18',@MYDATE,@MYDATE);
insert into SEMESTERS values('F2029','FALL 2029',  '2029-08-22','2029-12-12',@MYDATE,@MYDATE);


drop table if exists PERSONS;
CREATE TABLE `PERSONS` (
  `pers_id` varchar(16) NOT NULL,
  `pers_first_name` varchar(100) DEFAULT NULL,
  `pers_middle_name` varchar(100) DEFAULT NULL,
  `pers_last_name` varchar(100) DEFAULT NULL,
  `pers_external_id_type` varchar(50) DEFAULT NULL,
  `pers_external_id_number` varchar(50) DEFAULT NULL,
  `pers_date_of_birth` date DEFAULT NULL,
  `pers_created` datetime DEFAULT NULL,
  `pers_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`pers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

truncate table PERSONS;
delimiter //
begin not atomic
FOR i IN 1..50999
DO
set @LNN=f_random_last_name();
set @PID=concat(lower(substr(@LNN,1,2)),f_random_integer(10000000,99999999));
set @FNN=f_random_first_name();
set @MNN=if(f_random_integer(10,99)>20,f_random_first_name2(),NULL);
set @EXTTYPE=f_random_enum('passport,passport,passport,passport,passport,driverslicense,driverslicense,driverslicense,cedula,government,other');
set @EXTNO=concat(if(f_random_integer(10,99)>70,f_random_string(2,1),''),f_random_integer(111111,999999999) );
set @DOB=f_random_datetime(-6000000,-50000)-interval f_random_integer(12,51) year;
set @CRTED=f_random_datetime(-6000000,-50000);
insert ignore into PERSONS values (@PID,@FNN,@MNN,@LNN,@EXTTYPE,@EXTNO,@DOB,@CRTED,@CRTED);
end FOR;
end;
//
delimiter ;


drop table if exists PROFESSORS;
create table PROFESSORS(
  prof_pers_id varchar(10),
  prof_principal_discipline varchar(10), 
  prof_last_day_employed date, 
  prof_created datetime,
  prof_updated datetime,
  CONSTRAINT `fk_prof_pers` FOREIGN KEY (prof_pers_id) REFERENCES PERSONS (pers_id),
  CONSTRAINT `fk_prof_disc` FOREIGN KEY (prof_principal_discipline) REFERENCES DISCIPLINES (disc_id)
);


truncate table PROFESSORS;
delimiter //
begin not atomic
FOR i IN 1..4500
DO
-- select a PERSON to be a professor
set @PERSID = NULL;
set @L2ID=f_random_integer(10,99);
set @L2EX=f_random_integer(10,99);
set @PDISC=f_random_enum('compsci,compsci,compsci,compsci,design,design,design,design,design,engtech,environ,lingo,math,math,math,transport,transport');
set @LASTDAY=if(f_random_integer(10,100)<90,date('2999-01-01'),date(now()-interval f_random_integer(10,1000) day));

select pers_id, (pers_created + interval f_random_integer(10000,99999) second) into @PERSID, @CRTED from PERSONS where substr(pers_id,-2)=@L2ID and substr(pers_external_id_number,-2)=@L2EX order by pers_date_of_birth asc limit 1;
if @PERSID is not null then
  insert ignore into PROFESSORS values(@PERSID, @PDISC,@LASTDAY,@CRTED,@CRTED);
end if;
end FOR;
end;
//
delimiter ;




drop table if exists STAFF;
create table STAFF(
  staff_pers_id varchar(10),
  staff_job_title varchar(100), 
  staff_last_day_employed date, 
  staff_created datetime,
  staff_updated datetime,
  CONSTRAINT `fk_staff_pers` FOREIGN KEY (staff_pers_id) REFERENCES PERSONS (pers_id)
);


truncate table STAFF;
delimiter //
begin not atomic
FOR i IN 1..500
DO
-- select a PERSON to be a staff
set @PERSID = NULL;
set @PROCEED = NULL;
set @L2ID=f_random_integer(10,99);
set @L2EX=f_random_integer(10,99);
set @JOB=f_random_enum('cafeteria,janitor,gardener,administrative,administrative,administrative,administrative,administrative,administrative,plumber,mechanic,driver');
set @LASTDAY=if(f_random_integer(10,100)<90,date('2999-01-01'),date(now()-interval f_random_integer(10,1000) day));

select pers_id, (pers_created + interval f_random_integer(10000,99999) second) into @PERSID, @CRTED from PERSONS where substr(pers_id,-2)=@L2ID and substr(pers_external_id_number,-2)=@L2EX order by pers_date_of_birth desc limit 1;
select 'OK' into @PROCEED where not exists (select 'x' from PROFESSORS where prof_pers_id=@PERSID);
if @PERSID is not null and @PROCEED='OK' then
  insert ignore into STAFF values(@PERSID, @JOB,@LASTDAY,@CRTED,@CRTED);
end if;
end FOR;
end;
//
delimiter ;

drop table if exists STUDENTS;
create table STUDENTS(
  stud_pers_id varchar(10),
  stud_academic_field varchar(100), 
  stud_last_day_of_study date, 
  stud_created datetime,
  stud_updated datetime,
  CONSTRAINT `fk_stud_pers` FOREIGN KEY (stud_pers_id) REFERENCES PERSONS (pers_id),
  CONSTRAINT `fk_stud_acaf` FOREIGN KEY (stud_academic_field) REFERENCES ACADEMIC_FIELDS(acaf_id)
);

truncate table STUDENTS;
delimiter //
begin not atomic
DECLARE MYPERSID varchar(16);
DECLARE done INT DEFAULT FALSE;
DECLARE MYCURSOR CURSOR FOR 
SELECT pers_id
FROM (
  SELECT pers_id
    ,prof_pers_id
    ,staff_pers_id
  FROM PERSONS
  LEFT OUTER JOIN PROFESSORS ON (pers_id = prof_pers_id)
  LEFT OUTER JOIN STAFF ON (pers_id = staff_pers_id)
  ) AS x
WHERE prof_pers_id IS NULL
  AND staff_pers_id IS NULL;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=TRUE;

OPEN MYCURSOR;
  read_loop: LOOP
FETCH MYCURSOR into MYPERSID;
 IF done THEN LEAVE read_loop; end if;
set @ACAD_F=f_random_enum('algo,artintel,comparch,compcomm,compgraph,compinsci,compsec,datastr,logic,fdesign,indesign,intarch,landarch,strucarch,aeroeng,bioeng,chemeng,civeng,eleceng,mateng,mecheng,eco,envman,envpol,applingo,arabic,chinese,english,french,german,histlingo,lexico,phonetics,portug,semant,spanish,syntax,alg,analysis,arith,calc,geom,numtheo,probtheory,infograph,logistic,marine,masstrans,rdsafety,comparch,compcomm,compgraph,compinsci,compsec,datastr,logic,comparch,compcomm,compgraph,compinsci,compsec,datastr,logic');
  set @LASTDAY=if(f_random_integer(10,100)<90,date('2999-01-01'),date(now()-interval f_random_integer(10,1000) day));

insert ignore into STUDENTS (stud_pers_id,stud_academic_field,stud_last_day_of_study,stud_created,stud_updated)
VALUES
(MYPERSID,@ACAD_F,@LASTDAY,now(),now());
 END LOOP;
CLOSE MYCURSOR;

end;
//
delimiter ;


drop table if exists COURSE_CATALOG;
create table COURSE_CATALOG(
  ccat_id varchar(10) primary key,
  ccat_title  varchar(100),
  ccat_description varchar(1000),
  ccat_created_by varchar(10),
  ccat_discipline varchar(10),
  ccat_created datetime,
  ccat_updated datetime,
  CONSTRAINT `fk_ccat_prof` FOREIGN KEY (ccat_created_by) REFERENCES PROFESSORS (prof_pers_id),
  CONSTRAINT `fk_ccat_disc` FOREIGN KEY (ccat_discipline) REFERENCES DISCIPLINES (disc_id)
);

truncate table COURSE_CATALOG;
delimiter //
begin not atomic
  DECLARE prof varchar(100);
  DECLARE disc varchar(100);
  DECLARE done INT DEFAULT FALSE;
  DECLARE crs_cat CURSOR FOR 
select prof_pers_id, prof_principal_discipline from PROFESSORS where f_random_integer(1,10)!=4
union all
select prof_pers_id, prof_principal_discipline from PROFESSORS where f_random_integer(1,10)!=4
union all
select prof_pers_id, prof_principal_discipline from PROFESSORS where f_random_integer(1,10)!=4
union all
select prof_pers_id, prof_principal_discipline from PROFESSORS where f_random_integer(1,10)!=4
union all
select prof_pers_id, prof_principal_discipline from PROFESSORS where f_random_integer(1,10)!=4
union all
select prof_pers_id, prof_principal_discipline from PROFESSORS where f_random_integer(1,10)!=4
union all
select prof_pers_id, prof_principal_discipline from PROFESSORS where f_random_integer(1,10)!=4
union all
select prof_pers_id, prof_principal_discipline from PROFESSORS where f_random_integer(1,10)!=4
union all
select prof_pers_id, prof_principal_discipline from PROFESSORS where f_random_integer(1,10)!=4
union all
select prof_pers_id, prof_principal_discipline from PROFESSORS where f_random_integer(1,10)!=4
union all
select prof_pers_id, prof_principal_discipline from PROFESSORS where f_random_integer(1,10)!=4
union all
select prof_pers_id, prof_principal_discipline from PROFESSORS where f_random_integer(1,10)!=4
union all
select prof_pers_id, prof_principal_discipline from PROFESSORS where f_random_integer(1,10)!=4;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=TRUE;

  OPEN crs_cat;
  xloop:LOOP
  FETCH crs_cat into prof,disc;
  IF done THEN LEAVE xloop; END IF;

  set @TITLE1=f_random_enum('Analysis,Approach,Area,Assessment,Assume,Authority,Available,Benefit,Concept,Consistent,Constitutional,Unconstitutional,Contexts,Contextual,Contextualise,Contextualised,Contextualising,Decontextualised,Uncontextualised,Contracted,Contracting,Contractor,Contractors,Contracts,Created,Creates,Creating,Creation,Creations,Creative,Creatively,Creativity,Creator,Creators,Recreate,Recreated,Recreates');

  set @TITLE2=f_random_enum('Recreating,Definable,Define,Defined,Defines,Defining,Definitions,Redefine,Redefined,Redefines,Redefining,Undefined,Derivation,Derivations,Derivative,Derivatives,Derive,Derives,Deriving,Distribute,Distributed,Distributing,Distributional,Distributions,Distributive,Distributor,Distributors,Redistribute,Redistributed,Redistributes,Redistributing,Redistribution,Economical,Economically,Economics,Economies,Economist,Economists,Economy,Uneconomical,Environmental,Environmentalist,Environmentalists,Environmentally,Environments,Disestablish,Disestablished,Disestablishes,Disestablishing,Disestablishment');

  set @TITLE3=f_random_enum('Establish,Establishes,Establishing,Establishment,Establishments,Estimated,Estimates,Estimating,Estimation,Estimations,Overestimate,Overestimated,Overestimates,Overestimating,Underestimate,Underestimated,Underestimates,Underestimating,Evidenced,Evident,Evidential,Evidently,Exported,Exporter,Exporters,Exporting,Exports,Factor,Factored,Factoring,Finance,Financed,Finances,Financially,Financier,Financiers,Financing,Formulae,Formulas,Formulate,Formulated,Formulating,Formulation,Formulations,Reformulate,Reformulated,Reformulating,Reformulation,Reformulations');

  set @TITLE4=f_random_enum('Functioning,Functions,Identifiable,Identification,Identifies,Identify,Identifying,Identities,Identity,Unidentifiable,Incomes,Indicated,Indicates,Indicating,Indication,Indications,Indicative,Indicator,Indicators,Individualised,Individuality,Individualism,Individualist,Individualists,Individualistic,Individually,Individuals,Interpret,Interpretations,Interpretative,Interpreted,Interpreting,Interpretive,Interprets,Misinterpret,Misinterpretation,Misinterpretations,Misinterpreted,Misinterpreting,Misinterprets,Issues,Labour,Legal,Legislation,Major,Method,Occur,Percent,Period,Policy,Principle,Procedure,Process,Required,Research,Response,Role,Section,Sector,Significant,Similar,Source,Specific,Structure,Theory,Variables');
  
  select acaf_title into @TITLE5 from ACADEMIC_FIELDS where acaf_discipline=disc order by rand() limit 1;
 
 set @RNDNUM=f_random_integer(1,5);
 CASE @RNDNUM 
  WHEN 1 then
   set @FULL_TITLE=concat(@TITLE5,' ',@TITLE1);
  WHEN 2 then
   set @FULL_TITLE=concat(@TITLE2,' ',@TITLE5);
 WHEN 3 then
   set @FULL_TITLE=concat(@TITLE3,' ',@TITLE5,' ',@TITLE4);
 WHEN 4 then
   set @FULL_TITLE=concat(@TITLE5,' ',@TITLE2);
 ELSE 
   set @FULL_TITLE=concat(@TITLE4,' ',@TITLE5,' ',@TITLE2);
 END CASE;
 
 set @MYDATE=f_random_datetime(-3533333,-10000);


  INSERT IGNORE INTO COURSE_CATALOG VALUES(
  concat(UPPER(substr(@FULL_TITLE,1,2)),f_random_integer(111111,999999)),
  @FULL_TITLE,
  f_random_ipsum(f_random_integer(66,330)),
  prof,
  disc,@MYDATE, @MYDATE
  );

  END LOOP xloop;
  CLOSE crs_cat;

  DELETE from COURSE_CATALOG where ccat_title is NULL;
end;
//
delimiter ;


-- SEMESTERS


drop table if exists COURSES;
CREATE TABLE `COURSES` (
  `cors_id` varchar(32) NOT NULL,
  `cors_catalog_id` varchar(10) DEFAULT NULL,
  `cors_semester` varchar(10) DEFAULT NULL,
  `cors_meet_days` varchar(120) DEFAULT NULL,
  `cors_start_time` varchar(120) DEFAULT NULL,
  `cors_duration_minutes` int(11) DEFAULT NULL,
  `cors_location` varchar(20) DEFAULT NULL,
  `cors_professor` varchar(10) DEFAULT NULL,
  `cors_junior_prof` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cors_id`),
  KEY `fk_cors_ccat` (`cors_catalog_id`),
  KEY `fk_cors_semester` (`cors_semester`),
  KEY `fk_cors_professor` (`cors_professor`),
  KEY `fk_cors_junior_prof` (`cors_junior_prof`),
  CONSTRAINT `fk_cors_ccat` FOREIGN KEY (`cors_catalog_id`) REFERENCES `COURSE_CATALOG` (`ccat_id`),
  CONSTRAINT `fk_cors_junior_prof` FOREIGN KEY (`cors_junior_prof`) REFERENCES `PROFESSORS` (`prof_pers_id`),
  CONSTRAINT `fk_cors_professor` FOREIGN KEY (`cors_professor`) REFERENCES `PROFESSORS` (`prof_pers_id`),
  CONSTRAINT `fk_cors_semester` FOREIGN KEY (`cors_semester`) REFERENCES `SEMESTERS` (`smes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

truncate table COURSES;
delimiter //
begin not atomic
FOR i IN 1..99
DO

select SMESLIST into @SMESLIST from (
select 1 as ONE, group_concat(SMESSUBLIST) as SMESLIST from 
(select smes_id as SMESSUBLIST from SEMESTERS ORDER BY rand() limit 30) as y
  GROUP BY ONE
  ) AS x;
  
SELECT CCATLIST
INTO @CCATLIST
FROM (
  SELECT 1 AS ONE, group_concat(CCATSUBLIST) AS CCATLIST
  FROM (SELECT ccat_id AS CCATSUBLIST FROM COURSE_CATALOG  ORDER BY rand() limit 30) AS y
  GROUP BY ONE
  ) AS x;

FOR ii IN 1..75
DO

set @THISCOURSE=f_random_enum(@CCATLIST);
set @THISSEMESTER=f_random_enum(@SMESLIST);
set @MEET_DAYS=f_random_enum('Mon-Wed-Fri,Mon-Wed,Mon,Tue,Wed,Thu,Fri,Sat,Mon-Fri,Mon-Tue,Tue-Thu,Wed-Sat,Mon-Fri,Mon,Tue,Wed,Thu,Mon-Thu,Mon-Fri,Mon,Tue,Wed,Tue-Wed,Mon-Tue-Wed-Thu,Fri,Sat,Wed-Fri,Mon,Sat,Wed-Fri,Mon-Tue,Tue-Thu,Fri');
set @START_TIME=f_random_enum('6:00,7:00,7:30,8:00,9:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00,18:00,19:00,20:00,10:30,11:30,12:45,13:30,15:30');
set @DURATION=f_random_enum('60,60,60,60,60,90,90,90,90,50,50,45,45,120,120,30,60,60,60');
set @THISLOCATION=f_random_enum('Room 415,Room 414,Room 600,Room 180,Room 140,Room 200,Room 212,Room 215,Room 413,Room 300,Grambly Hall,Room 212,Drinders Hall,Beakly Auditorium,Room 210,Room 7,Room 9,Room 101,Room 102,Glass Hall,Abbot Auditorium,Febin Study Hall,Nockoro Library,Room 81,Room 90,Room 44,Room 31,Gorgonzola Kitchen,Classroom 1,Classroom 2,Classroom 3,Classroom 4,Classroom 5,Quiet Hall,Laberintine Study,Laboratory 8,Laboratory 9,Laboratory 5,Hightop Hall,Lowtop Lounge,Cafeteria,Room 55,Room 11,Room 93,Room 101,Room 102,Room 103,Room 104,Room 105,Room 106,Room 107,Room 108,Room 109,Room 201,Room 202,Room 203,Room 204,Room 205,Room 206,Room 207,Room 208,Room 209,Room 301,Room 302,Room 303,Room 304,Room 305,Room 306,Room 307,Room 308,Room 309,Room 401,Room 402,Room 403,Room 404,Room 405,Room 406,Room 407,Room 408,Room 409,Room 501,Room 502,Room 503,Room 504,Room 505,Room 506,Room 507,Room 508,Room 509,Room 601,Room 602,Room 603,Room 604,Room 605,Room 606,Room 607,Room 608,Room 609,Room 701,Room 702,Room 703,Room 704,Room 705,Room 706,Room 707,Room 708,Room 709,Class Hall 11,Class Hall 12,Class Hall 13,Class Hall 14,Class Hall 15,Class Hall 16,Class Hall 17,Class Hall 18,Class Hall 19,Class Hall 21,Class Hall 22,Class Hall 23,Class Hall 24,Class Hall 25,Class Hall 26,Class Hall 27,Class Hall 28,Class Hall 29,Room F101,Room F102,Room F103,Room F104,Room F105,Room F106,Room F107,Room F108,Room F109,Room F201,Room F202,Room F203,Room F204,Room F205,Room F206,Room F207,Room F208,Room F209,Room F301,Room F302,Room F303,Campus Drive 200,Campus Drive 202');
select ccat_discipline into @THISDISCIPLINE from COURSE_CATALOG where ccat_id=@THISCOURSE;

/* SET PRIMARY KEY */
select concat(ccat_discipline,f_random_digits('-00000')) into @PRIMKEY from COURSE_CATALOG where ccat_id=@THISCOURSE limit 1;


select PROFPERSLIST into @PROFPERSLIST
FROM (
select 1 as ONE, group_concat(prof_pers_id) as PROFPERSLIST from 
(select prof_pers_id from PROFESSORS 
  where prof_last_day_employed > current_date()
  AND prof_principal_discipline=@THISDISCIPLINE
  ORDER BY rand() limit 30) as y
  GROUP BY ONE
  ) as x;

set @PROF1=f_random_enum(@PROFPERSLIST);
set @PROF2=f_random_enum(@PROFPERSLIST);

while @PROF1=@PROF2 DO
 set @PROF2=f_random_enum(@PROFPERSLIST);
end while;

INSERT IGNORE INTO COURSES (cors_id,cors_catalog_id,cors_semester,cors_meet_days,cors_start_time,cors_duration_minutes,cors_location,cors_professor,cors_junior_prof)
values
(@PRIMKEY,@THISCOURSE,@THISSEMESTER,@MEET_DAYS,@START_TIME,@DURATION,@THISLOCATION,@PROF1,@PROF2);

end for;
end for;

end;
//
delimiter ;


select * from COURSES order by cors_semester,cors_location,cors_meet_days,cors_start_time;


drop table if exists `ADDRESS_HISTORY`;
CREATE TABLE `ADDRESS_HISTORY` (
  `addr_pers_id` varchar(16) DEFAULT NULL,
  `addr_street_address_1` varchar(160) DEFAULT NULL,
  `addr_street_address_2` varchar(160) DEFAULT NULL,
  `addr_city` varchar(120) DEFAULT NULL,
  `addr_state_province` varchar(120) DEFAULT NULL,
  `addr_postal_code` varchar(36) DEFAULT NULL,
  `addr_country` varchar(120) DEFAULT NULL,
  `addr_valid_until` date DEFAULT NULL,
  `addr_created` datetime DEFAULT NULL,
  `addr_updated` datetime DEFAULT NULL,
  KEY `fk_addr_pers` (`addr_pers_id`),
  CONSTRAINT `fk_addr_pers` FOREIGN KEY (`addr_pers_id`) REFERENCES `PERSONS` (`pers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

drop table if exists `TELEPHONE_HISTORY`;
CREATE TABLE `TELEPHONE_HISTORY` (
  `tele_pers_id` varchar(16) DEFAULT NULL,
  `tele_country_code` varchar(12) DEFAULT NULL,
  `tele_telephone_number` varchar(24) DEFAULT NULL,
  `tele_valid_until` date DEFAULT NULL,
  `tele_created` datetime DEFAULT NULL,
  `tele_updated` datetime DEFAULT NULL,
  KEY `fk_tele_pers` (`tele_pers_id`),
  CONSTRAINT `fk_tele_pers` FOREIGN KEY (`tele_pers_id`) REFERENCES `PERSONS` (`pers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


truncate table ADDRESS_HISTORY;
delimiter //
begin not atomic
DECLARE MYPERSID varchar(16);
DECLARE done INT DEFAULT FALSE;
DECLARE MYCURSOR CURSOR FOR 
  SELECT pers_id FROM PERSONS;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=TRUE;

OPEN MYCURSOR;
  read_loop: LOOP
FETCH MYCURSOR into MYPERSID;
 IF done THEN LEAVE read_loop; end if;
   set @COUNTRY=if(f_random_integer(1,12)=6,f_random_country(1),f_random_country(0));
set @ii=0; set @maxi=f_random_integer(1,5);
while @ii < @maxi do
  if @ii =(@maxi-1) then set @COUNTRY='USA'; end if;
  set @ADDR1=F_RANDOM_STREET_ADDRESS();
  set @ADDR2=F_RANDOM_STREET_ADDRESS_2(33);
  set @CITY=F_RANDOM_CITY();

  select CASE when @COUNTRY='USA' then f_random_state(0) when @COUNTRY='Canada' then f_random_state(1) when @COUNTRY='Mexico' then f_random_state(2) else f_random_state(4) end into @STATEPROV;
  set @POSTAL_CODE=if(@COUNTRY<>'USA',concat(f_random_string(2,1),f_random_integer(111,9999)),f_random_integer(11111,99999));
  
  /* IF CURRENT ADDRESS, THEN MUST BE IN LIBERTY CITY, USA */
  if @ii=(@maxi-1) then set @CITY='Liberty City'; set @STATEPROV='Florida'; set @POSTAL_CODE='55555'; set @COUNTRY='USA'; end if;
  
  insert into ADDRESS_HISTORY (addr_pers_id,addr_street_address_1,addr_street_address_2,addr_city,addr_state_province,addr_postal_code,addr_country,addr_valid_until,addr_created,addr_updated)
  values
  (MYPERSID,@ADDR1,@ADDR2,@CITY,@STATEPROV,@POSTAL_CODE,@COUNTRY,if(@ii=(@maxi-1),date('2999-01-01'),f_random_date(-3000,0)),now(),now());
  set @ii=@ii+1;
end while;

end loop;

end;
//
delimiter ;

truncate table TELEPHONE_HISTORY;
delimiter //
begin not atomic
DECLARE MYPERSID varchar(16);
DECLARE done INT DEFAULT FALSE;
DECLARE MYCURSOR CURSOR FOR 
  SELECT pers_id FROM PERSONS;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=TRUE;

OPEN MYCURSOR;
  read_loop: LOOP
FETCH MYCURSOR into MYPERSID;
 IF done THEN LEAVE read_loop; end if;
 
select CASE addr_country WHEN 'Afghanistan' THEN '93' WHEN 'Albania' THEN '355' WHEN 'Algeria' THEN '213' WHEN 'American Samoa' THEN '1-684' WHEN 'Andorra' THEN '376' WHEN 'Angola' THEN '244' WHEN 'Anguilla' THEN '1-264' WHEN 'Antarctica' THEN '672' WHEN 'Antigua and Barbuda' THEN '1-268' WHEN 'Argentina' THEN '54' WHEN 'Armenia' THEN '374' WHEN 'Aruba' THEN '297' WHEN 'Australia' THEN '61' WHEN 'Austria' THEN '43' WHEN 'Azerbaijan' THEN '994' WHEN 'Bahamas' THEN '1-242' WHEN 'Bahrain' THEN '973' WHEN 'Bangladesh' THEN '880' WHEN 'Barbados' THEN '1-246' WHEN 'Belarus' THEN '375' WHEN 'Belgium' THEN '32' WHEN 'Belize' THEN '501' WHEN 'Benin' THEN '229' WHEN 'Bermuda' THEN '1-441' WHEN 'Bhutan' THEN '975' WHEN 'Bolivia' THEN '591' WHEN 'Bosnia and Herzegovina' THEN '387' WHEN 'Botswana' THEN '267' WHEN 'Brazil' THEN '55' WHEN 'British Indian Ocean Territory' THEN '246' WHEN 'British Virgin Islands' THEN '1-284' WHEN 'Brunei' THEN '673' WHEN 'Bulgaria' THEN '359' WHEN 'Burkina Faso' THEN '226' WHEN 'Burundi' THEN '257' WHEN 'Cambodia' THEN '855' WHEN 'Cameroon' THEN '237' WHEN 'Canada' THEN '1' WHEN 'Cape Verde' THEN '238' WHEN 'Cayman Islands' THEN '1-345' WHEN 'Central African Republic' THEN '236' WHEN 'Chad' THEN '235' WHEN 'Chile' THEN '56' WHEN 'China' THEN '86' WHEN 'Christmas Island' THEN '61' WHEN 'Cocos Islands' THEN '61' WHEN 'Colombia' THEN '57' WHEN 'Comoros' THEN '269' WHEN 'Cook Islands' THEN '682' WHEN 'Costa Rica' THEN '506' WHEN 'Croatia' THEN '385' WHEN 'Cuba' THEN '53' WHEN 'Curacao' THEN '599' WHEN 'Cyprus' THEN '357' WHEN 'Czech Republic' THEN '420' WHEN 'Democratic Republic of the Congo' THEN '243' WHEN 'Denmark' THEN '45' WHEN 'Djibouti' THEN '253' WHEN 'Dominica' THEN '1-767' WHEN 'Dominican Republic' THEN '1-809' WHEN 'East Timor' THEN '670' WHEN 'Ecuador' THEN '593' WHEN 'Egypt' THEN '20' WHEN 'El Salvador' THEN '503' WHEN 'Equatorial Guinea' THEN '240' WHEN 'Eritrea' THEN '291' WHEN 'Estonia' THEN '372' WHEN 'Ethiopia' THEN '251' WHEN 'Falkland Islands' THEN '500' WHEN 'Faroe Islands' THEN '298' WHEN 'Fiji' THEN '679' WHEN 'Finland' THEN '358' WHEN 'France' THEN '33' WHEN 'French Polynesia' THEN '689' WHEN 'Gabon' THEN '241' WHEN 'Gambia' THEN '220' WHEN 'Georgia' THEN '995' WHEN 'Germany' THEN '49' WHEN 'Ghana' THEN '233' WHEN 'Gibraltar' THEN '350' WHEN 'Greece' THEN '30' WHEN 'Greenland' THEN '299' WHEN 'Grenada' THEN '1-473' WHEN 'Guam' THEN '1-671' WHEN 'Guatemala' THEN '502' WHEN 'Guernsey' THEN '44-1481' WHEN 'Guinea' THEN '224' WHEN 'Guinea-Bissau' THEN '245' WHEN 'Guyana' THEN '592' WHEN 'Haiti' THEN '509' WHEN 'Honduras' THEN '504' WHEN 'Hong Kong' THEN '852' WHEN 'Hungary' THEN '36' WHEN 'Iceland' THEN '354' WHEN 'India' THEN '91' WHEN 'Indonesia' THEN '62' WHEN 'Iran' THEN '98' WHEN 'Iraq' THEN '964' WHEN 'Ireland' THEN '353' WHEN 'Isle of Man' THEN '44-1624' WHEN 'Israel' THEN '972' WHEN 'Italy' THEN '39' WHEN 'Ivory Coast' THEN '225' WHEN 'Jamaica' THEN '1-876' WHEN 'Japan' THEN '81' WHEN 'Jersey' THEN '44-1534' WHEN 'Jordan' THEN '962' WHEN 'Kazakhstan' THEN '7' WHEN 'Kenya' THEN '254' WHEN 'Kiribati' THEN '686' WHEN 'Kosovo' THEN '383' WHEN 'Kuwait' THEN '965' WHEN 'Kyrgyzstan' THEN '996' WHEN 'Laos' THEN '856' WHEN 'Latvia' THEN '371' WHEN 'Lebanon' THEN '961' WHEN 'Lesotho' THEN '266' WHEN 'Liberia' THEN '231' WHEN 'Libya' THEN '218' WHEN 'Liechtenstein' THEN '423' WHEN 'Lithuania' THEN '370' WHEN 'Luxembourg' THEN '352' WHEN 'Macao' THEN '853' WHEN 'Macedonia' THEN '389' WHEN 'Madagascar' THEN '261' WHEN 'Malawi' THEN '265' WHEN 'Malaysia' THEN '60' WHEN 'Maldives' THEN '960' WHEN 'Mali' THEN '223' WHEN 'Malta' THEN '356' WHEN 'Marshall Islands' THEN '692' WHEN 'Mauritania' THEN '222' WHEN 'Mauritius' THEN '230' WHEN 'Mayotte' THEN '262' WHEN 'Mexico' THEN '52' WHEN 'Micronesia' THEN '691' WHEN 'Moldova' THEN '373' WHEN 'Monaco' THEN '377' WHEN 'Mongolia' THEN '976' WHEN 'Montenegro' THEN '382' WHEN 'Montserrat' THEN '1-664' WHEN 'Morocco' THEN '212' WHEN 'Mozambique' THEN '258' WHEN 'Myanmar' THEN '95' WHEN 'Namibia' THEN '264' WHEN 'Nauru' THEN '674' WHEN 'Nepal' THEN '977' WHEN 'Netherlands' THEN '31' WHEN 'Netherlands Antilles' THEN '599' WHEN 'New Caledonia' THEN '687' WHEN 'New Zealand' THEN '64' WHEN 'Nicaragua' THEN '505' WHEN 'Niger' THEN '227' WHEN 'Nigeria' THEN '234' WHEN 'Niue' THEN '683' WHEN 'North Korea' THEN '850' WHEN 'Northern Mariana Islands' THEN '1-670' WHEN 'Norway' THEN '47' WHEN 'Oman' THEN '968' WHEN 'Pakistan' THEN '92' WHEN 'Palau' THEN '680' WHEN 'Palestine' THEN '970' WHEN 'Panama' THEN '507' WHEN 'Papua New Guinea' THEN '675' WHEN 'Paraguay' THEN '595' WHEN 'Peru' THEN '51' WHEN 'Philippines' THEN '63' WHEN 'Pitcairn' THEN '64' WHEN 'Poland' THEN '48' WHEN 'Portugal' THEN '351' WHEN 'Puerto Rico' THEN '1-787, 1-939' WHEN 'Qatar' THEN '974' WHEN 'Republic of the Congo' THEN '242' WHEN 'Reunion' THEN '262' WHEN 'Romania' THEN '40' WHEN 'Russia' THEN '7' WHEN 'Rwanda' THEN '250' WHEN 'Saint Barthelemy' THEN '590' WHEN 'Saint Helena' THEN '290' WHEN 'Saint Kitts and Nevis' THEN '1-869' WHEN 'Saint Lucia' THEN '1-758' WHEN 'Saint Martin' THEN '590' WHEN 'Saint Pierre and Miquelon' THEN '508' WHEN 'Saint Vincent and the Grenadines' THEN '1-784' WHEN 'Samoa' THEN '685' WHEN 'San Marino' THEN '378' WHEN 'Sao Tome and Principe' THEN '239' WHEN 'Saudi Arabia' THEN '966' WHEN 'Senegal' THEN '221' WHEN 'Serbia' THEN '381' WHEN 'Seychelles' THEN '248' WHEN 'Sierra Leone' THEN '232' WHEN 'Singapore' THEN '65' WHEN 'Sint Maarten' THEN '1-721' WHEN 'Slovakia' THEN '421' WHEN 'Slovenia' THEN '386' WHEN 'Solomon Islands' THEN '677' WHEN 'Somalia' THEN '252' WHEN 'South Africa' THEN '27' WHEN 'South Korea' THEN '82' WHEN 'South Sudan' THEN '211' WHEN 'Spain' THEN '34' WHEN 'Sri Lanka' THEN '94' WHEN 'Sudan' THEN '249' WHEN 'Suriname' THEN '597' WHEN 'Svalbard and Jan Mayen' THEN '47' WHEN 'Swaziland' THEN '268' WHEN 'Sweden' THEN '46' WHEN 'Switzerland' THEN '41' WHEN 'Syria' THEN '963' WHEN 'Taiwan' THEN '886' WHEN 'Tajikistan' THEN '992' WHEN 'Tanzania' THEN '255' WHEN 'Thailand' THEN '66' WHEN 'Togo' THEN '228' WHEN 'Tokelau' THEN '690' WHEN 'Tonga' THEN '676' WHEN 'Trinidad and Tobago' THEN '1-868' WHEN 'Tunisia' THEN '216' WHEN 'Turkey' THEN '90' WHEN 'Turkmenistan' THEN '993' WHEN 'Turks and Caicos Islands' THEN '1-649' WHEN 'Tuvalu' THEN '688' WHEN 'U.S. Virgin Islands' THEN '1-340' WHEN 'Uganda' THEN '256' WHEN 'Ukraine' THEN '380' WHEN 'United Arab Emirates' THEN '971' WHEN 'United Kingdom' THEN '44' WHEN 'USA' THEN '1' WHEN 'Uruguay' THEN '598' WHEN 'Uzbekistan' THEN '998' WHEN 'Vanuatu' THEN '678' WHEN 'Vatican' THEN '379' WHEN 'Venezuela' THEN '58' WHEN 'Vietnam' THEN '84' WHEN 'Wallis and Futuna' THEN '681' WHEN 'Western Sahara' THEN '212' WHEN 'Yemen' THEN '967' WHEN 'Zambia' THEN '260' WHEN 'Zimbabwe' THEN '263'
ELSE '1'
END as COUNTRY_CODE into @INITIAL_COUNTRY_CODE
from ADDRESS_HISTORY where addr_pers_id=MYPERSID order by addr_valid_until limit 1;
 
set @ii=0; set @maxi=f_random_integer(1,4);
while @ii < @maxi do
  insert ignore into TELEPHONE_HISTORY (tele_pers_id,tele_country_code,tele_telephone_number,tele_valid_until,tele_created,tele_updated)
  VALUES
  (MYPERSID,if(@ii=(@maxi-1),'1',@INITIAL_COUNTRY_CODE),f_random_integer(2111111,8999999),if(@ii=(@maxi-1),date('2999-01-01'),f_random_date(-3000,0)),now(),now());
  set @ii=@ii+1;
end while;

end loop;

end;
//
delimiter ;

drop table if exists ACADEMIC_EVALUATIONS;
CREATE TABLE `ACADEMIC_EVALUATIONS` (
  `eval_stu_id` varchar(10) DEFAULT NULL,
  `eval_course_id` varchar(32) DEFAULT NULL,
  `eval_evaluator_id` varchar(10) DEFAULT NULL,
  `eval_midterm_grade` enum('0','4','4.5','5','5.5','6','6.5','7','7.5','8','8.5','','9','9.5','10') DEFAULT NULL,
  `evaluator_midterm_comments` varchar(1200) DEFAULT NULL,
  `eval_final_grade` enum('0','4','4.5','5','5.5','6','6.5','7','7.5','8','8.5','','9','9.5','10') DEFAULT NULL,
  `evaluator_final_comments` varchar(1200) DEFAULT NULL,
  `eval_created` datetime DEFAULT NULL,
  `eval_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
 PARTITION BY RANGE (year(`eval_created`))
(PARTITION `p_old` VALUES LESS THAN (2019) ENGINE = InnoDB,
 PARTITION `p_2019` VALUES LESS THAN (2020) ENGINE = InnoDB,
 PARTITION `p_2020` VALUES LESS THAN (2021) ENGINE = InnoDB,
 PARTITION `p_2021` VALUES LESS THAN (2022) ENGINE = InnoDB,
 PARTITION `p_2022` VALUES LESS THAN (2023) ENGINE = InnoDB,
 PARTITION `p_2023` VALUES LESS THAN (2024) ENGINE = InnoDB,
 PARTITION `p_2024` VALUES LESS THAN (2025) ENGINE = InnoDB,
 PARTITION `p_2025` VALUES LESS THAN (2026) ENGINE = InnoDB,
 PARTITION `p_2026` VALUES LESS THAN (2027) ENGINE = InnoDB,
 PARTITION `p_2027` VALUES LESS THAN (2028) ENGINE = InnoDB,
 PARTITION `p_2028` VALUES LESS THAN (2029) ENGINE = InnoDB,
 PARTITION `p_2029` VALUES LESS THAN (2030) ENGINE = InnoDB)
;

-- select stud_pers_id, stud_academic_field into @M, @K from STUDENTS where stud_pers_id='ab21169135';

truncate table ACADEMIC_EVALUATIONS;
delimiter //
begin not atomic
DECLARE M_CURSOR_1 CURSOR FOR 
select smes_id from SEMESTERS where smes_end_date < now() order by smes_start_date;
DECLARE M_CURSOR_2 CURSOR for
select 


end;
//
delimiter ;
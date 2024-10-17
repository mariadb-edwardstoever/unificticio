/* SCRIPT BY EDWARD STOEVER OF MARIADB SUPPORT */
use unificticio;
set @LNN=f_random_last_name();
set @PID=concat(lower(substr(@LNN,1,2)),f_random_integer(10000000,99999999));
set @FNN=f_random_first_name();
set @MNN=if(f_random_integer(10,99)>20,f_random_first_name2(),NULL);
set @EXTTYPE=f_random_enum('passport,passport,passport,passport,passport,driverslicense,driverslicense,driverslicense,cedula,government,other');
set @EXTNO=concat(if(f_random_integer(10,99)>70,f_random_string(2,1),''),f_random_integer(111111,999999999) );
set @DOB=f_random_datetime(-6000000,-50000)-interval f_random_integer(12,51) year;
set @CRTED=now();
insert ignore into PERSONS values (@PID,@FNN,@MNN,@LNN,@EXTTYPE,@EXTNO,@DOB,@CRTED,@CRTED);

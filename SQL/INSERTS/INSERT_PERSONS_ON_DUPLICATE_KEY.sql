/* SCRIPT BY EDWARD STOEVER OF MARIADB SUPPORT */
use unificticio;

select f_random_enum('pf42628342,po87064693,co73974142,ta71180491,ni96730133,sa94606429,bu67045183,mc43966694,sa44516673,um35135642,cu83995240,ki43840946,la72717021,po55946622,li43722299,le11626879,se28150230,re61809234,pi83756816,pa56325366,of50717785,de21782181,cl25149375,se27384610,co14370867,ri35628059,st72381649,sp38575748,ko97962847,ta98071435,sc54647171,tr37140073,se99186095,po60972645,ha71087517,br28303347,ma11631158,af80972029,sw26027496,li35815794,fo80585310,za20872216,vo95539412,ma35625219,sc52084418,bi18330468,bu45062435,mc30575738,br20185357,ry73909976') into @ALREADY_PERSON;


set @LNN=f_random_last_name();
set @NOT_YET_PID=concat(lower(substr(@LNN,1,2)),f_random_integer(10000000,99999999));
select if(f_random_integer(1,5)=5, @ALREADY_PERSON,@NOT_YET_PID) into @PID;
set @FNN=f_random_first_name();
set @MNN=if(f_random_integer(10,99)>20,f_random_first_name2(),NULL);
set @EXTTYPE=f_random_enum('passport,passport,passport,passport,passport,driverslicense,driverslicense,driverslicense,cedula,government,other');
set @EXTNO=concat(if(f_random_integer(10,99)>70,f_random_string(2,1),''),f_random_integer(111111,999999999) );
set @DOB=f_random_datetime(-6000000,-50000)-interval f_random_integer(12,51) year;
set @CRTED=now();
insert ignore into PERSONS values (@PID,@FNN,@MNN,@LNN,@EXTTYPE,@EXTNO,@DOB,@CRTED,@CRTED) ON DUPLICATE KEY UPDATE
pers_updated=now();



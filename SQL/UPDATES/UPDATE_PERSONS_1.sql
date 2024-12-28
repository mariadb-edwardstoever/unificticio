/* SCRIPT BY EDWARD STOEVER OF MARIADB SUPPORT */
use unificticio;


select f_random_enum('ba30109785,sh56851451,fo97836433,na47950918,na51533253,so39252089,la30613174,po94371246,ho74792762,co66764455,ci43398994,ma42888685,pe93902137,da16569195,ad48236659,sa68000334,st13480220,be11261601,ki96706130,tr67387028,go56529003,al84918156,wi90749442,ro71085808,ag83377485,se13155935,cl43833205,ch88236208,ha60029929,la96682326,sh96901536,ol33363063,wa17747784,pa29469221,vi49436775,sw32618608,no16346443,ti59191246,cr40494901,fo50600923,ro34294536,ba20686583,pu31280008,fr75745828,ar41091470,pr32075143,wh20111970,is94298701,un92799416,ta33992816') into @PPERSID;

UPDATE PERSONS SET pers_external_id_type=f_random_enum('cedula,driverslicense,government,other,passport'), pers_external_id_number=f_random_digits('000-00000'), pers_updated=now() where pers_id=@PPERSID;

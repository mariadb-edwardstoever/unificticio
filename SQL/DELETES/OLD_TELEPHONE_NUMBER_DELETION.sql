/* SCRIPT BY EDWARD STOEVER OF MARIADB SUPPORT */
use unificticio;

select f_random_enum('pa81605709,ze34485436,ha77473954,fr98696068,ra80871933,ra48395035,hn89232681,vo51390816,wh42779710,me13964672,st82979291,bo12498923,bo22514958,ba24139073,fe95670082,ha40767975,bo37578736,ca99380885,da86260022,sa90504118,co28191115,al25339565,as94411579,wa20143874,ma91910747,fu71447207,ma75441398,wy93113850,ro87630159,wo55951548,rh96087060,ha81111835,vo94439654,fi84080230,ei34849958,ki63312544,bl52065053,ru20303911,br25560533,ca22428990,bo75825155,co36825544,st64293600,be19450447,ca40922389,ju28105500,ke23579048,va19782949,ha16496373,va45086266') into @TELE_PERS;


select  tele_telephone_number into @DELETE_THIS_NUMBER from TELEPHONE_HISTORY where tele_pers_id=@TELE_PERS order by tele_valid_until limit 1;

DELETE FROM TELEPHONE_HISTORY where tele_pers_id=@TELE_PERS and tele_telephone_number=@DELETE_THIS_NUMBER
and tele_valid_until < now();

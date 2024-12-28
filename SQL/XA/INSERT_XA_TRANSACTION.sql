/* SCRIPT BY EDWARD STOEVER OF MARIADB SUPPORT */
use unificticio;

select concat('xa start ''',@AA:=f_random_digits('00000-00000'),''',''',@BB:=f_random_string(5,1),''',',@CC:=f_random_integer(1,9),';') INTO @MY_SCRIPT_1;
select concat('INSERT INTO MESSAGES (msg_sent,msg_sender,msg_recipient,msg_subject,msg_text) VALUES (now(),''',f_random_enum('bl22347787,ve92153168,mu17863008,gr43895058,ha19436823,al33787726,te47190593,bo80277501,sc67145397,bu75095653'),''',''',f_random_enum('ho78858069,fr83400856,ru27109306,sc18893307,pa97573316,bo51338837,go34754271,ba83208118,di94596165,ma37880187'),''',f_random_ipsum(f_random_integer(13,21)),f_random_ipsum(f_random_integer(18,90)));') INTO @MY_SCRIPT_2;
select concat(' xa end ''',@AA,''',''',@BB,''',',@CC,';') INTO @MY_SCRIPT_3;
select concat(' xa prepare ''',@AA,''',''',@BB,''',',@CC,';') INTO @MY_SCRIPT_4;
select concat(' xa commit ''',@AA,''',''',@BB,''',',@CC,';') INTO @MY_SCRIPT_5;

PREPARE stmt1 FROM @MY_SCRIPT_1;
PREPARE stmt2 FROM @MY_SCRIPT_2;
PREPARE stmt3 FROM @MY_SCRIPT_3;
PREPARE stmt4 FROM @MY_SCRIPT_4;
PREPARE stmt5 FROM @MY_SCRIPT_5;

EXECUTE stmt1;
EXECUTE stmt2;
EXECUTE stmt3;
EXECUTE stmt4;
EXECUTE stmt5;

DEALLOCATE PREPARE stmt1;
DEALLOCATE PREPARE stmt2;
DEALLOCATE PREPARE stmt3;
DEALLOCATE PREPARE stmt4;
DEALLOCATE PREPARE stmt5;

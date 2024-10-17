#!/bin/bash
# Script by Edward Stoever for Mariadb Support
rm -f unificticio_dump.sql unificticio_dump.sql.zip
mariadb-dump --databases unificticio --add-drop-database --routines > unificticio_dump.sql
zip  unificticio_dump.sql.zip  unificticio_dump.sql
rm -f  unificticio_dump.sql

#

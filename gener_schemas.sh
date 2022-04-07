#!/bin/bash
source .env

cp ./mysql_schema.sql ./mysql_schema/jaakko_db.sql
cp ./mysql_schema.sql ./mysql_schema/immu_db.sql
cp ./mysql_schema.sql ./mysql_schema/markus_db.sql

sed -i 's/mydb/jaakko_db/g' ./mysql_schema/jaakko_db.sql
sed -i 's/user_nimi/jaakko/g' ./mysql_schema/jaakko_db.sql
sed -i "s/user_passwd/$JAAKKO_PASS/g" ./mysql_schema/jaakko_db.sql

sed -i 's/mydb/immu_db/g' ./mysql_schema/immu_db.sql
sed -i 's/user_nimi/immu/g' ./mysql_schema/immu_db.sql
sed -i 's/user_passwd/'$IMMU_PASS'/g' ./mysql_schema/immu_db.sql

sed -i 's/mydb/markus_db/g' ./mysql_schema/markus_db.sql
sed -i 's/user_nimi/markus/g' ./mysql_schema/markus_db.sql
sed -i 's/user_passwd/'$MARKUS_PASS'/g' ./mysql_schema/markus_db.sql


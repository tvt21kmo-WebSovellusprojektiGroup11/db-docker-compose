cp ./mysql_schema.sql ./mysql_schema/jaakko_db.sql
cp ./mysql_schema.sql ./mysql_schema/immu_db.sql
cp ./mysql_schema.sql ./mysql_schema/markus_db.sql

sed -i 's/mydb/jaakko_db/g' ./mysql_schema/jaakko_db.sql
sed -i 's/mydb/immu_db/g' ./mysql_schema/immu_db.sql
sed -i 's/mydb/markus_db/g' ./mysql_schema/markus_db.sql


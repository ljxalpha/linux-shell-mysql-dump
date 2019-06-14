#!/bin/bash
tablenames=$(cat tablenames.txt)
for val in $tablenames:
do
    temp=${val:0:`expr ${#val}-1`} 
    echo "mysqldump --default-character-set=utf8 -h111.198.139.95 -P3306 -ulijie -plijie_kb5 --skip-lock-tables medicine_database ${temp} > /home/kate/LJX/medicine_database/${temp}.sql" > /home/kate/LJX/medicine_database.log
    `mysqldump --default-character-set=utf8 -h111.198.139.95 -P3306 -ulijie -plijie_kb5 --skip-lock-tables medicine_database ${temp} > /home/kate/LJX/medicine_database/${temp}.sql`
    echo "Generate ${temp}.sql finished."
done
echo "*************************************************"
echo "Finished!"


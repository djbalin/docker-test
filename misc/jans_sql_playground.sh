mysql -e "drop database if exists DejligDB; 
          create database DejligDB; 
          use DejligDB; 
          source /mnt/jans_sql_script.sql; 
          source /mnt/jans_sql_query.sql"
# mysql -e "" &
# echo "Database created successfully" &
# mysql -e ""
# echo "Populating database" &
# mysql -e "source /mnt/jans_sql_script.sql" &
# echo "Enjoying the database" &
# mysql -e "source /mnt/jans_sql_query.sql" &

exit
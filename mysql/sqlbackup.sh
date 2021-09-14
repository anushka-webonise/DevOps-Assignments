DBNAME=employees
DATE=`date +"%Y%m%d"`
SQLFILE=$DBNAME-${DATE}.sql
#SQLFILE=annewroot2.sql
echo "Creating backup"
sudo mysqldump --opt --user=root --password $DBNAME > $SQLFILE
gzip $SQLFILE
echo "Done"


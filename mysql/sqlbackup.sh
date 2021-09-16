DBNAME=employees
DATE=`date +"%Y%m%d"`
SQLFILE=$DBNAME-${DATE}.sql

echo "Creating backup"
sudo mysqldump --opt --user=root $DBNAME > $SQLFILE
gzip $SQLFILE
echo "Done"


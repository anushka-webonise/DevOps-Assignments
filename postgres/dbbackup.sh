#!/bin/ksh

# setting parameter values , this can be sent from command line as next version
USRNAME='postgres'
DBASE='dvdrental'
PATHFILE='/home/webonise/DevOps-Assignments/postgres/dvdrental'
BKPFILE=$PATHFILE-$(date +%Y-%m-%d).sql

echo "Pulling Database dvdrental"
pg_dump -U$USRNAME -d$DBASE > $BKPFILE
gzip $BKPFILE

echo "Clearing old backups"
find . -type f -iname '*.backup.gz' -ctime +15 -not -name '????-??-01.backup.gz' -delete
echo "Clearing Done"

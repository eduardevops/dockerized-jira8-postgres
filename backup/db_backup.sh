#!/bin/bash

# Cron jobs
# * * * * *    /bin/bash jira8-mariadb/backup/db_backup.sh >> /var/log/db_backup-cron.log
# # If you do not have a clear understanding how to configure date in crontab or you just feel too lazy to do so, use https://crontab.guru


# Getting current date
now=$(date +"%d-%b-%Y")


docker exec jira-db pg_dump -U postgres <database_name> > /path/to/backup-folder/dump_${now}.sql

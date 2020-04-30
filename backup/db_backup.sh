#!/bin/bash

# Cron jobs
# * * * * *    /bin/bash /path/to/dockerized-jira8-postgresql/backup/db_backup.sh >> /var/log/db_backup-cron.log
# # If you do not have a clear understanding how to configure date in crontab or you just feel too lazy to do so, use https://crontab.guru


# Getting current date
now=$(date +"%d-%b-%Y")

source /path/to/dockerized-jira8-postgresql/.env.db

docker exec jira-db pg_dump -U $POSTGRES_USER $POSTGRES_DB > /path/to/backup-folder/pgdump_${now}.sql

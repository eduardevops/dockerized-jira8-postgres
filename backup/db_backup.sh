#!/bin/bash

# Cronjob example
# * * * * *    /bin/bash /path/to/db_backup.sh >> /var/log/db-cron.log


# Get current date.
now=$(date +"%d-%b-%Y")

# Backup database.
source /path/to/dockerized-jira8-postgresql/.env.db
docker exec jira-db pg_dump -U $POSTGRES_USER $POSTGRES_DB > /path/to/backup-folder/pgdump_${now}.sql

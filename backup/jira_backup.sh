#!/bin/bash

# Cronjob example
# * * * * *    /bin/bash jira8.2-mariadb/backup/jira_backup.sh >> /var/log/db_backup-cron.log


# Get current date
now=$(date +"%d.%b.%Y"-"%H:%M")

# Copy XML files from container to host
docker cp jira-web:/var/atlassian/jira/export/. /backup/jira-xml/

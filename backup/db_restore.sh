#!/bin/bash

# Restore DB
source /opt/dockerized-jira8-mysql/.env.db
docker exec  jira-db psql -U $POSTGRES_USER -d $POSTGRES_DB < /path/to/backup-file/pgdump.sql

#!/bin/bash

source /opt/dockerized-jira8-mysql/.env.db

# Restore Stackpost DB
docker exec  jira-db psql -U $POSTGRES_USER -d $POSTGRES_DB < /path/to/bkup-file/pgdump.sql

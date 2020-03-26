#!/bin/bash

source /opt/dockerized-jira8-mysql/.env.db

# Restore Stackpost DB
docker exec -i <postgres_container_name> psql -U postgres -d <database_name> < backup.sql

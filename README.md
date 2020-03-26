### Dockerized Jira with PostgreSQL

![Logo](./assets/logo.jpg)

### Status
<img alt="Image Size" src="https://img.shields.io/docker/image-size/eduardevops/jira8-postgresql" style="max-width:100%;"> <img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/eduardevops/jira8-postgresql" style="max-width:100%;"> <img alt="Build Status" src="https://img.shields.io/docker/cloud/build/eduardevops/jira8-postgresql" style="max-width:100%;"> <img alt="Licenses" src="https://img.shields.io/badge/License-GPLv3-blue.svg" style="max-width:100%;">

## Table of contents
* [Versions](#Versions)
* [Prerequisites](#Prerequisites)
* [Project Tree](#Project-Tree)
* [Config Folder](#Config-Folder)
* [Rename](#Rename)
* [HowTo](#HowTo)

This is a fork of ![Martin Aksel Jensen's](https://github.com/cptactionhank) project ![docker-atlassian-jira](https://github.com/cptactionhank/docker-atlassian-jira)  <br>
You may use his project if you prefer PostgreSQL.
For Jira with MySQL use the following project ![Jira with MySQL](https://github.com/eduardevops/dockerized-jira8-mysql)
For Jira with MariaDB use the following project ![Jira with MariaDB](https://github.com/eduardevops/dockerized-jira8-mariadb)

#### Versions
*	Jira v8.8.0
*	PostgreSQL v11.7
* OpenJDK v11.0.6/v8.0.212

#### Prerequisites
*	[Docker](https://www.docker.com/)
*	[Docker Compose](https://docs.docker.com/compose/install/)
------

#### Project Tree

```less
├── .env.db
├── .env.jira
├── Dockerfile
├── assets
│   └── logo.jpg
├── backup
│   ├── .pgpass
│   ├── db_backup.sh
│   ├── db_restore.sh
│   └── jira_backup.sh
├── conf
│   ├── apache-reverse-proxy.conf
│   ├── httpd.conf
│   └── nginx-reverse-proxy.conf
├── docker-compose.yml
└── docker-entrypoint.sh
```

#### Config Folder
| File                        | Description                                                                                   |
| :-------------------------- |:--------------------------------------------------------------------------------------------- |
| apache-reverse-proxy.conf   | Basic reverse proxy config file for apache (With Letsencrypt certificates)                    |
| nginx-reverse-proxy.conf    | Basic reverse proxy config file for nginx  (With Letsencrypt certificates)                    |
| httpd.conf                  | Apache conf with slight change, just to avoid "Could not reliably determine ..." message      |
| .pgpass                     | The file .pgpass in a user's home directory can contain passwords to be used if the connection requires a password |

#### Rename
All names can be, and, in most cases, should be changed.

-----

#### HowTo
Clone repo to your server (I would suggest use /opt directory)
```less
sudo git clone https://github.com/eduardevops/dockerized-jira8-postgresql.git
```

Navigate to the project folder
```less
cd /path/to/dockerized-jira8-postgresql
```

Make docker-entrypoint.sh file executable for ```other``` and run the composer
```less
chmod o+x docker-entrypoint.sh
docker-compose up -d
```

Check logs in real-time
```less
docker-compose logs -f
```

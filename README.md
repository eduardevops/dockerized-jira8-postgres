### Dockerized Jira with Postgres

![Logo](./assets/logo.png)

### Status
<img alt="Image Size" src="https://img.shields.io/docker/image-size/eduardsaryan/jira8-postgres" style="max-width:100%;"> <img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/eduardsaryan/jira8-postgres" style="max-width:100%;"> <img alt="Build Status" src="https://img.shields.io/docker/cloud/build/eduardsaryan/jira8-postgres" style="max-width:100%;"> <img alt="Licenses" src="https://img.shields.io/badge/License-GPLv3-blue.svg" style="max-width:100%;">

### Table of contents
* [Prerequisites](#Prerequisites)
* [Project Tree](#Project-Tree)
* [Backup Folder](#Backup-Folder)
* [Rename](#Rename)
* [Deployment](#Deployment)

For Jira with MySQL use the following project [Jira with MySQL](https://github.com/eduardsaryan/dockerized-jira8-mysql) <br>
For Jira with MariaDB use the following project [Jira with MariaDB](https://github.com/eduardsaryan/dockerized-jira8-mariadb)

### Prerequisites
*	[Docker](https://www.docker.com/)
*	[Docker Compose](https://docs.docker.com/compose/install/)
------

### Project Tree
```less
├── .env.db
├── .env.jira
├── Dockerfile
├── Dockerfile-OpenJDK8
├── assets
│   └── logo.jpg
├── backup
│   ├── db_backup.sh
│   ├── db_restore.sh
│   └── jira_backup.sh
├── docker-compose.yml
└── docker-entrypoint.sh
```

### Backup Folder
| File                        | Description                                                                           |
| :-------------------------- |:------------------------------------------------------------------------------------- |
| db_backup.sh   | Small script to backup dockerized database                                                         |
| db_restore.sh  | Small script to restore dockerized database                                                        |
| jira_backup.sh | Small script to copy Jira exported XML files and remove files older than 3 days                    |

### Rename
It is highly advised to change all names.

-----

### Deployment
Clone repo to your server. I suggest using ```/opt``` directory
```less
sudo git clone https://github.com/eduardsaryan/dockerized-jira8-postgres.git
```

Navigate to the project folder
```less
cd /path/to/dockerized-jira8-postgres
```

Make docker-entrypoint.sh file executable for ```other``` and run the composer

```less
chmod o+x docker-entrypoint.sh
docker-compose up -d
```

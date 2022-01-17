
# Dockerized Hesk Application

Hesk application running in a docker environment




## Getting Started

- Make sure docker engine is running
- Open terminal in project's root directory and run ```docker-compose up```
- Visit http://localhost:8000/install/install.php in browser and provide database details below and proceed with installation
```
        DATABASE_HOST: db
        MYSQL_ROOT_PASSWORD: hesk
        MYSQL_DATABASE: hesk
        MYSQL_USER: hesk_user
        MYSQL_PASSWORD: t7%#KxD3Aj/27=^{
```
- Take note of administrator's password
- Delete ```./install/```
- Visit http://localhost:8000 in browser

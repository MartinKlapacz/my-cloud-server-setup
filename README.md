### The setup of my cloud server
I use docker-compose files to configure my services. Currently in use are:
- cleanfolio.yml: my portfolio website 
- owncloud.yml: my personal file cloud
- portainer.yml: a tool I use for managing my docker containers, images, networks and volumes in the browser
- stirling-pdf.yml: a tool I use for pdf manipulation
- kanban.yml: a trello-like and simple project management tool I use for personal projects 

I use Make to simplify starting and stopping services.
The services require the following environment variables:

```
# portainer
PORTAINER_PORT=

# owncloud
OWNCLOUD_VERSION=10.13.1
OWNCLOUD_HTTP_PORT=
OWNCLOUD_DOMAIN=
MYSQL_PASSWORD=
OWNCLOUD_ADMIN_USERNAME=
OWNCLOUD_ADMIN_PASSWORD=
MARIA_DB_VERSION=11.1.2

# cleanfolio
CLEANFOLIO_PORT=

# stirling-pdf
STIRLING_PDF_PORT=

# kanboard
KANBOARD_PORT=
```

### The setup of my cloud server
I use docker-compose files to configure my services. Currently in use are:
- websites.yml: My portfolio website and a watchtower instance that updates the running instance if a new image is pushed to my dockerhub
- owncloud.yml: My owncloud instance
- portainer.yml: A great tool for inspecting your docker containers, images, networks and volumes via the browser

I use Make to simplify starting and stopping services.

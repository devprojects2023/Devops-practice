
# docker registry:
# to create local registry in the mac
    docker pull registry

# setup local registry path:
    Share the Directory with Docker
    Open Docker Desktop.
    Click on the Docker icon in the system tray and select "Preferences..."
    Go to the "Resources" tab and then the "File Sharing" section.
    Click the "+" button to add a new directory. Select the directory on your host system that you want to share with Docker. In this case, it's the directory where you want to store your local registry data (e.g., /path/to/local/registry).

# to stop the registry
    docker stop registry


# to build the Dockerfile and push that to local registry:
    docker build -t myjenkins:2.414.2-1 .
    docker tag myjenkins:2.414.2-1 localhost:5000/myjenkins
    docker push localhost:5000/myjenkins

# to get the Jenkins password
    docker ps
    docker logs <container-id>
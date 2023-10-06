
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

# to create the jenkins network first
    docker network create jenkins  

# to build the Dockerfile and push that to local registry:
    docker build -t myjenkins:2.414.2-1 .
    docker tag myjenkins:2.414.2-1 localhost:5000/myjenkins
    docker push localhost:5000/myjenkins

# to run the docker container use this. -p 50000:50000 is for expose the port for jenkins api. -v for create volume locally. At the end we can give the docker image name (localhost:5000/myjenkins).

    docker run -d --name myjenkins --restart=on-failure --network jenkins  --env DOCKER_HOST=tcp://docker:2376 --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 -p 8080:8080 -p 50000:50000 -v /Users/docker-registry/Jenkins-volume:/var/jenkins_home -v /Users/docker-registry/Jenkins-volume/jenkins-docker-certs:/certs/client:ro localhost:5000/myjenkins                                                                    
    
    


# to get the Jenkins password
    docker ps
    docker logs <container-id>


# install sonarqube by docker 
    docker pull sonarqube:9.9.2-community
    docker build -t sonarqube:9.9.2-community .
    docker tag sonarqube:9.9.2-community localhost:5000/sonarqube:v1
    docker push localhost:5000/sonarqube:v1

    docker run -d --name mysonarqube -p 9000:9000 localhost:5000/sonarqube:v1 

# install mongo by docker
    docker pull mongo:latest
    docker build -t mongo:latest .
    docker tag mongo:latest localhost:5000/mongo:v1
    docker push localhost:5000/mongo:v1

    docker run -d --name mymongo -p 2717:27017 -v /Volumes/M2SSD/Devops-course/Devops-practice/Mongo:/data/db localhost:5000/mongo:v1


# Maven Command Examples:
# Here are some common Maven commands:

mvn compile: this command will Compiles the project's code.
mvn test: It will runs unit tests of compiled code.
mvn package: It will packages the compiled code.
mvn install: It will installs the package into the local repository.
mvn deploy: It will deploys the package to a remote repository.
mvn site: It will generates project documentation and reports.
mvn site-deploy: It will deploys the generated documentation to a remote web server.
mvn clean: It will executes the clean phase and delete any previous build outputs.
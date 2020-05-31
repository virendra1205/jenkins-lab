
# Jenkins Lab Setup & Guide

### This repository is created for those who want to learn and setup for jenkins ready lab on Docker. In this lab you will be learning and setting up Jenkins integration with various DevOps and infrstructure tools like,
  - MySQL
  - Maven
  - AWS S3 bucket
  - Docker Containers 
  - SSH Tool
  - Anisble
  
### How to use this repository 
- **Ensure you have git client installed in your system** 
  > [`Install git client`](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

- **Clone the repository using `git clone` command**
  > `git clone https://github.com/virendra1205/jenkins-lab.git`
   
 - **Change the ownership of jenkins_home folder inside repository** [`Reference`](https://hub.docker.com/r/jenkins/jenkins/).
    ```
     cd jenkins-lab
     sudo chown -R 1000:1000 jenkins-lab
    ````
  
 - **Checkout Docker compose file `docker-compose.yml` this has all docker image and container build instructions**
   - Jenkins (Running Jenkins with Anisble)
   - Remote-host (Running as client)
   - DB (Running MYSQL)
   
 - **Install Docker and Docker compose in server.
   ```
      sudo chmod +x docker-setup.sh
      sudo ./docker-setup.sh
      sudo docker version                       << Validate Docker Version 
      sudo docker-compose --version             << Validate Docker compose Version
    ```
    
  - **Build Docker images and start docker containers**
    ```
       docker-compose build
       docker-comose up -d 
       docker-compose ps -a                     << Validate Container status
    ```
    > Incase any container failed to start please run `docker logs` command to check errors.
    >> [Reference](https://docs.docker.com/engine/reference/commandline/logs/)
  
  - **Login to container using default credentials and URL from your base machine IP**
     ```
        URL : http://<you machine IP address>:8080
        username: admin
        password: 1234
     ```

   
    
   

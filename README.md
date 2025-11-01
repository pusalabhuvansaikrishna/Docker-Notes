# Docker-Notes

# What is Docker Image?

A Docker image is a lightweight, stand-alone and executable software package that includes everything needed to run a piece of software package that includes everythig needed to run a piece of software, such as codem runtime, libraries, environment variables and configuration files. Images are used to create Docker containers, which are instances of these images.  

**Docker Image** = Base Image (Minimal OS) + Application Code (Actual Code) + Dependencies (Libraries) + Metadata (Information about the Image)  

**Docker Image Lifecycle** = Creation -> Storage -> Distribution -> Execution  

# What is a Dockerfile?

A Dockerfile is a text file that contains a series of instructions used to build a Docker Image. Each Instruction in a Dockerfile creates a layer in the image, allowing for efficient image creation and reuse of layers. Dockerfiles are used to automate the image creation process, ensuring consistency and reproducibility.  


##  Key Components of a Dockerfile

1) Base Image (FROM) -  Specifies the starting point for the image, which could be minimal operating system, a specific version of a language runtime, or another image. Eg: FROM Ubuntu:20.04
2) Labels (LABEL) - Adds metadata to the image, such a version, description or maintainer. Eg: LABEL Version="1.0" description="My Application"
3) Run Commands (RUN) - Executes commands in the image during the build process, typically used to install software packages. Eg: RUN apt-get update && apt-get install -y python3
4) Copy Files (COPY) - Copies files or directores fromthe host system to the image. Eg: COPY ./app
5) Environment Variables (ENV) - Sets Environment Variables in the image. Eg: ENV PATH /app/bin:$PATH
6) Work Directory (WORKDIR) - Sets the working directory for subsequent instructions. Eg: WORKDIR /app
7) Expose Ports (EXPOSE) - Informs Docker that the container listens on specified network ports. Eg: Expose 8080
8) Command (CMD) - Provides a default command to run when the container starts. Eg: CMD ["python","app.py"]
9) Volume (VOLUME) - Created a mount point with a specified path and marks it as holding externally mounted volumes from the host or the pther containers. Eg: VOLUME ['/data']

Order of Components to define while creating the Dockerfile:
1) Base Image  
2) Working Dir  
3) Copy  
4) Run  
5) Port  
6) Command  

# What is Docker Container?

A Docker container is a lightweight, portable and isolated environment that encapsulates an application and its dependencies, allowing it to run consistency across different computing environments. Containers are created from Docker images, which are immutable and contain all the necessary components for the application to run.  

# Layers in Docker Container

In Docker, each instruction in a Dockerfile creates a new immutable layer that stacks on top of the previous ones to form a complete image. These layers are cached and reused across builds if the instructions and context remain unchanged, which speeds up image creation and reduces redundancy. When a container is launched from an image, Docker adds a thin writable layer on top where all runtime changes—like file edits, new installations, or deletions—are stored. This layer is ephemeral and isolated, meaning it doesn’t affect the underlying image or other containers. Understanding this layered architecture helps optimize builds, debug runtime behavior, and manage persistent data effectively.  


# What is Docker Registry?

A Docker Registry is a service that stores and distributes Docker Images.  

# Docker Network

Three Types of Networks in Docker

1) Bridge - The Bridge Driver creates an internal network within a single Docker host. Containers placed within this network can communicate with each other but are isolated from containers, not on the internal network. Bridge is the default driver when running single containers or when using docker-compose.  
2) Host - When using the host driver, the container shares the network stack of the codker host - appearing as if the container is the host itself, from a network persective.
3) None - The None Driver simply disables networking for a container, making it isolated from other containers.  

# Docker Commands  

1) docker images -> Lists the existsing docker images in the machine  
2) docker image ls -> Performs the same thing as above cmd  
3) docker stop < Containername / Containerid > -> stops the container  
4) docker pull < Imagename > -> Will install the image from the Docker Hub/ Destination and will get the latest image  
5) docker pull < Imagename:tagname > -> Ths will install the image of specified version/tag  
6) docker history < Imagename > -> This will show the list commands got executed to make the existing image   
7) docker rmi < Imagename:tagname > -> will delete the mentioned docker image  
8) docker create < Imageid > -> will create the docker container with that particular Image, but does not start it and also with random container name  
9) docker create --name < name > < Imagename/Image Id > -> will create a docker container with specific name  
10) docker ps -a -> Will list down all the containers, even which are not running!  
11) docker ps -> Will list down only running conatiners  
12) docker start < container Name/ Container Id > -> Will start the mentioned container  
13) docker exec -it < container Name / Container Id > bash -> By running this, you will get into the container  
14) docker --version -> Provides the version of installed docker  
15) docker login -> login to your Docker Hub Account  
16) docker search < Imagename > -> Gets the Images from the list of images in docker  
17) docker inspect image < Imagename > -> Provides the detailed information about mentioned image  
18) docker rm < containername / containerid > -> Will remove the container  
19) docker run --name < name > < Imagename/id > -> This will create, run, and logs you into the VM  
20) docker run -d --name < name > < Imagename/id > -> This will create, run the container, not logs you in  
21) docker kill < containername > -> Forecelly shutting down the container  
22) docker network ls -> lists the Networks in docker
23) docker run --name < name > -p < Hostport : Containerport > < image > -> this will create and run the docker container and route the traffic from outside to 8080 port of Hostmachine to 80 port of container
24) docker inspect network < network type >
25) docker run -d --name < containername > --net < networktype > < imagename > -> By default when container created will be a prt of the bridge network (Which means, it will be a part of the default vnet that docker engine uses internally), other than that if you want to try another kind of networking, this is the command.  


This Information is gathered/Learnt from the following:

1) https://www.youtube.com/shorts/ShUECEU7BXE  
2) https://www.youtube.com/playlist?list=PLFoX_td1iTj-ATh48yU4qudcsLPi2kzv0
3) https://www.youtube.com/watch?v=GToyQTGDOS4

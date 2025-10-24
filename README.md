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

# what is Docker Container?

A Docker container is a lightweight, portable and isolated environment that encapsukates an application and its dependencies, allowing it to run consistency across different computing environments. Containers are created from Docker images, which are immutable and contain all the necessary components for the application to run.  

# What is Docker Registry?

A Docker Registry is a service that stores and distributes Docker Images.  

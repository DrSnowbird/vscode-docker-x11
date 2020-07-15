# Visual Studio Code Docker in X11
[![](https://images.microbadger.com/badges/image/openkbs/vscode-docker-x11.svg)](https://microbadger.com/images/openkbs/vscode-docker-x11 "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/openkbs/vscode-docker-x11.svg)](https://microbadger.com/images/openkbs/vscode-docker-x11 "Get your own version badge on microbadger.com")

# Purpose
To provide Visual Studio Code IDE in a Container

## > Container-based Development and Big Data Analytic Environments
- Providing many commonly used "pure docker-based IDEs, Applications, Servers" for software development daily needs.
- Supporting development (e.g. JDK, Python, ...) and advanced applications/servers (e.g., scala-ide-docker, Netbean-docker, Jupyter, Zeppelin, SparkNotebook, Eclipse-docker, and many other big data analytic, deep learning, machine learning, and semantic knowledge graph applications/servers).

## > Only needs two scripts: "./run.sh" and "./build.sh"
- "./run.sh" to instantly stand up without build - pulling images from Docker Hub 
- "./build/sh" to build containers.

- Note: for Production usage, please ensure all aspects of security by enhancing source code and setup.

## > Build-time and Run-time Environment Variable files ".env" and "env_file.txt"
- **".env"** (for docker-compose exclusively only) or **"docker.env"** (our extension): "docker-compose" only environment variables. "docke-compose" command will automatically search for the file ".env" in the current directory.
- : Build-time environment variables to  overwrite those variables defined inside Dockefile

# How to Google-Chrome running:
To start google-chrome, use the full command below
```
google-chrome --no-sandbox --disable-gpu --disable-extensions
```

##- Rider configuration for run.sh ####
##- Use "#VOLUMES" and "#PORTS" to indicate that the variables for run.sh"
##-To ignore line, use "##" (double) in the beginning, 
##-  e.g. "##VOLUMES" and "##PORTS"
##-  - To indicate that the variables for run.sh", use only one "#",  
##-     e.g. "#VOLUMES" and "#PORTS"
#VOLUMES_LIST="data workspace"
```
Then, you are ready to build and run (see below).

# Build
- This project provides a simple Dockerfile for the purpose of illustration only. You need to extend/modify the Docker to
support whatever you want to do.
```
./build.sh
```

# (NEW) Configuration
New extension to allow users to enter "Volume mapping" and "Port mapping" entries together with "docker.env" file with "#" syntax to avoid docker-compose pick up the entries -- "Rider" configuration!
Here is the example syntax:
```
## Rider configuration for run.sh ####
# - Use "#VOLUMES" and "#PORTS" to indicate that the variables for run.sh"
# - To ignore line, use "##" (double) in the beginning, e.g. "##VOLUMES" and "##PORTS"
# - To indicate that the variables for run.sh", use only one "#",  e.g. "#VOLUMES" and "#PORTS"
#VOLUMES_LIST="data workspace"
##PORTS_LIST="18080:8000 17200:7200"
```
# Run
- To run the simple example build image; it will pop up X11 to display Firefox docker-based browser.
Note that the script "run.sh" is designed to generic for every project with assumption that it use the "current git directory name" to figure out the image name you may want to use.
```
./run.sh
```



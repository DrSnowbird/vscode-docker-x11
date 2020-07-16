# Visual Studio Code Docker in X11
[![](https://images.microbadger.com/badges/image/openkbs/vscode-docker-x11.svg)](https://microbadger.com/images/openkbs/vscode-docker-x11 "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/openkbs/vscode-docker-x11.svg)](https://microbadger.com/images/openkbs/vscode-docker-x11 "Get your own version badge on microbadger.com")

# Purpose
To provide Visual Studio Code IDE in a Container

# Build
- This project provides a simple Dockerfile for the purpose of illustration only. You need to extend/modify the Docker to
support whatever you want to do.
```
./build.sh
```

# Configuration
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


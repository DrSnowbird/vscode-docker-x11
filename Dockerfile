FROM openkbs/jdk11-mvn-py3-x11

MAINTAINER DrSnowbird "DrSnowbird@openkbs.org"

###########################################################################
#### ---- DO NOT CHANGE Below unless release location changed    ---- #####
###########################################################################

WORKDIR ${HOME}

ARG VSCODE_TGZ_URL=https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
ARG VSCODE_PKG=code_linux-deb-x64.deb
RUN wget -cq --no-check-certificate ${VSCODE_TGZ_URL} -O ${VSCODE_PKG}
RUN sudo apt-get install -y ./${VSCODE_PKG} # && rm -f ./${VSCODE_PKG}
ENV VSCODE_HOME=/usr/share/code

#### ------------------------
#### ---- user: Non-Root ----
#### ------------------------

#### --- Enterpoint for container ---- ####
USER ${USER}
WORKDIR ${HOME}

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN sudo chown $USER:$USER /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/share/code/bin/code --no-sandbox"]
#CMD ["/bin/bash"]
#CMD ["/usr/bin/firefox"]
#CMD ["/usr/bin/google-chrome","--no-sandbox","--disable-gpu", "--disable-extensions"]


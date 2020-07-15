FROM openkbs/jdk-mvn-py3-x11

MAINTAINER DrSnowbird "DrSnowbird@openkbs.org"

###########################################################################
#### ---- DO NOT CHANGE Below unless release location changed    ---- #####
###########################################################################
ENV VSCODE_VERSION=1.4.7

WORKDIR ${HOME}

# https://github.com/protegeproject/protege-distribution/releases/download/v5.5.0/VSCode-5.5.0-linux.tar.gz
ARG VSCODE_TGZ_URL=https://go.microsoft.com/fwlink/?LinkID=760868
ARG VSCODE_PKG=code_1.47.1-1594686231_amd64.deb
RUN wget -cq --no-check-certificate ${VSCODE_TGZ_URL} -O ${VSCODE_PKG}
RUN sudo apt-get install -y ./${VSCODE_PKG}

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
CMD ["/usr/share/code/bin/code"]
#CMD ["/bin/bash"]
#CMD ["/usr/bin/firefox"]
#CMD ["/usr/bin/google-chrome","--no-sandbox","--disable-gpu", "--disable-extensions"]


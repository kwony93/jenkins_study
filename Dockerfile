#build images jenkins
FROM jenkins/jenkins:lts
USER root
#1.docker,kubectl cli etc.. install.sh copy
COPY install_tools.sh /tmp/install_tools.sh
#2.exec permission & Run shell.script
RUN chmod +x /tmp/install_tools.sh && /tmp/install_tools.sh $HOST_GID
RUN rm /tmp/install_tools.sh
USER jenkins

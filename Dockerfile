FROM jenkins/jenkins:lts

USER root

COPY install_tools.sh /usr/local/bin/install_tools.sh

RUN chmod +x /usr/local/bin/install_tools.sh && \
    /bin/bash /usr/local/bin/install_tools.sh

USER jenkins

from jenkins/jenkins:lts
# image docker reference - https://github.com/jenkinsci/docker/blob/c2d6f2122fa03c437e139a317b7fe5b9547fe49e/Dockerfile
# Distributed Builds plugins
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
RUN /usr/local/bin/install-plugins.sh ssh-slaves

# install Notifications and Publishing plugins
RUN /usr/local/bin/install-plugins.sh email-ext
RUN /usr/local/bin/install-plugins.sh mailer
RUN /usr/local/bin/install-plugins.sh slack

# Artifacts
RUN /usr/local/bin/install-plugins.sh htmlpublisher

# UI
RUN /usr/local/bin/install-plugins.sh greenballs
RUN /usr/local/bin/install-plugins.sh simple-theme-plugin

# Scaling
RUN /usr/local/bin/install-plugins.sh kubernetes

USER jenkins

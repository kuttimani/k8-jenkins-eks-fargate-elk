from jenkins/jenkins:lts
# image docker reference - https://github.com/jenkinsci/docker/blob/c2d6f2122fa03c437e139a317b7fe5b9547fe49e/Dockerfile
# Distributed Builds plugins
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

USER jenkins

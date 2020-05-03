rm -rf /tmp/dockertmp
mkdir /tmp/dockertmp
cp ../jenkinsConfigs/executors.groovy /tmp/dockertmp/
cp ../jenkinsConfigs/plugins.txt /tmp/dockertmp/
cp ../bootstrapjobs/seedjob_config.xml /tmp/dockertmp/
docker build -t kuttimani/jenkins-k8-image:0.9 -f ./jenkinsmasterDockerfile /tmp/dockertmp

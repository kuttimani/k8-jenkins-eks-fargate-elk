rm -rf /tmp/dockertmp
mkdir /tmp/dockertmp
cp jenkinsConfigs/executors.groovy /tmp/dockertmp/
cp plugins.txt /tmp/dockertmp/
docker build -t kuttimani/jenkins-k8-image:0.6 -f ./Dockerfile /tmp/dockertmp

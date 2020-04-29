rm -rf /tmp/dokcertmp
mkdir /tmp/dockertmp
cp jenkinsConfigs/executors.groovy /tmp/dockertmp/
docker build -t kuttimani/jenkins-k8-image:0.4 -f ./Dockerfile /tmp/dockertmp

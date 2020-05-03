folder('dockerjobs'){
    displayName('docker jobs')
    description('docker k8 jobs')
}
// pipeline reference http://<jenkins url>/plugin/job-dsl/api-viewer/index.html
pipelineJob('testjobs/hello-world'){
    definition {
        displayName('Build python docker image')
        logRotator {
          daysToKeep(5)
          numToKeep(5)
        }
        throttleConcurrentBuilds{
          maxTotal(1)
        }
        cpsScm {
            scm {
                git {
                    remote {
                        url('https://github.com/kuttimani/k8-jenkins-eks-fargate-elk.git')
                    }
                    branches('master')
                    scriptPath('testpath')
                    extensions {
                      wipeOutWorkspace()
                    }
                }
            }
        }
    }
}

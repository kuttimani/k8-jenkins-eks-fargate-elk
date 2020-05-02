folder('testjobs'){
    displayName('hello world')
    description('test jobs')
}
pipelineJob('testjobs/hello-world'){
    definition {
        displayName('Build test job')
        throttleConcurrentBuilds{
          maxTotal(1)
        }
    }
}

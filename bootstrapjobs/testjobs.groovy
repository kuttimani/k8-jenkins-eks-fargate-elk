folder('testjobs'){
    displayName('hello world')
    description('test jobs')
}
pipelineJob('testjobs/hello-world'){
    definition {
        displayName('Build test job')
        logrotator {
          daysToKeep(5)
          numToKeep(5)
        }
        throttleConcurrentBuilds{
          maxTotal(1)
        }
    }
}

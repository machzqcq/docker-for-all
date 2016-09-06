stage "checkout&build"
node('master'){
    checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/machzqcq/docker-for-ci']]])
    dir('api_app') {
    sh 'docker build -t  "api_snapshot" -f Dockerfile .'
}
}

stage "DeployRun"
node('master'){
    dir('api_app') {
    sh "docker run -d -p 3412:3412 -e COUCH_SERVER=${COUCH_SERVER} api_snapshot"
}
}

stage "test"
docker.image('rubytestimage').inside {
   checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/machzqcq/docker-for-ci']]])
   sh '''#!/bin/bash -l
echo $0
pwd
cd api_app
cd acceptance_tests
bundle install
bundle exec cucumber features BASE_URL=http://192.168.99.100:3412
'''
step([$class: 'CucumberReportPublisher', fileExcludePattern: '', fileIncludePattern: '', ignoreFailedTests: false, jenkinsBasePath: '', jsonReportDirectory: '', missingFails: false, parallelTesting: false, pendingFails: false, skippedFails: false, undefinedFails: false])
}
node {
    stage('Clean Workspace'){
        sh "rm -rf *"
    }
    stage('Cit Clone'){
        git([url: 'https://github.com/lulu-77/myTest.git', branch: 'master']);
    }
    stage('SonarQube analysis') {
        def sonarqubeScannerHome = tool name: 'mysonar-scanner'

        withSonarQubeEnv('projects-lunaticdev') {
            sh "${sonarqubeScannerHome}/bin/sonar-scanner"
        }
    }
    stage('Build'){
         withMaven(maven: 'maven3.6'){
            sh "mvn clean -B -Dmaven.test.failure.ignore verify"
        }
    }
    stage('Test'){
        withMaven(maven: 'maven3.6'){
            sh "mvn test"
        }
    }
    
}

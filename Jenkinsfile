node {
    stage('Clean Workspace'){
        sh "rm -rf *"
    }
    stage('Git Clone'){
        git([url: 'https://github.com/lulu-77/myTest.git', branch: 'master']);
    }
    stage('SonarQube Analysis') {
        def sonarqubeScannerHome = tool name: 'mysonar-scanner'

        withSonarQubeEnv('projects-lunaticdev') {
            sh "${sonarqubeScannerHome}/bin/sonar-scanner"
        }
    }
    stage('Maven Clean'){
        // def mvnHome = tool 'maven3.6'
        // sh "${mvnHome}/bin/mvn -B -Dmaven.test.failure.ignore verify"
         withMaven(maven: 'maven3.6'){
            sh "mvn post-clean"
        }
    }
    stage('Maven Test'){
        // sh 'python3 runtest.py';
        withMaven(maven: 'maven3.6'){
            sh "mvn test"
        }
    }
    
}

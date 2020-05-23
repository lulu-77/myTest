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
    //def mvnHome = tool 'maven3.6'
    //def jdkHome = tool 'jdk1.7'
    //env.PATH = "${mvnHome}/bin:${jdkHome}/bin:${evn.PATH}"
    stage('Build'){
    //    sh "mvn clean package -Dmaven.test.skip=true -U"
         withMaven(maven: 'maven3.6'){
            //sh "mvn clean verify"
            bat "${mvnHome}/bin/mvn -B -Dmaven.test.failure.ignore verify"
        }
    }
    stage('Test'){
        // bat 'python3 runtest.py';
        withMaven(maven: 'maven3.6'){
            //sh "mvn test"
            bat "mvn test"
        }
    }
    
}

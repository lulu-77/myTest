node {
    stage('Clean Workspace'){
        sh "rm -rf *"
    }
    stage('Cit Clone'){
        git([url: 'https://github.com/lulu-77/myTest.git', branch: 'master']);
    }
    def mvnHome = tool 'maven3.6'
    def jdkHome = tool 'jdk1.7'
    env.PATH = "${mvnHome}/bin:${jdkHome}/bin:${evn.PATH}"
    stage('Build'){
        sh "mvn clean package -Dmaven.test.skip=true -U"
    }
    stage('Test'){
        // bat 'python3 runtest.py';
    }
    
}

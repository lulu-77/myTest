node {
    stage('ch-using-scm'){
     echo 'gi';
     git branch: 'master',url:'http://10.20.16.3/ruancanghui/springbootdemo.git';
    }
    
    stage('build-using-scm'){
     echo 'build';
        mvn clean install -DskipTests=ture;
    }
    
    stage('test-using-scm'){
     echo 'test';
    }
    
    stage('deploy-using-scm'){
     echo 'deploy';
    }
}

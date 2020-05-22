node {
    stage('git-using-scm'){
     echo 'gi';
     git branch: 'master',url:'https://github.com/lulu-77/myTest.git';
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

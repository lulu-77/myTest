node {
    stage('gitclone-using-scm'){
     echo 'gi';
     git branch: 'master',url:'https://github.com/lulu-77/myTest.git';
    }
    
    stage('build-using-scm'){
     echo 'build';
        mvn clean install -DskipTests=ture;
    }
    
    stage('Test'){
        // bat 'python3 runtest.py'
    }
}

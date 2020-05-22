node {
    stage('gitclone-using-scm'){
     echo 'gi';
     git branch: 'master',url:'https://github.com/lulu-77/myTest.git';
    }
    
    stage('build-using-scm'){
     echo 'build';
     mvn -U -am clean package -DskipTests;
    }
    
    stage('Test'){
        // bat 'python3 runtest.py'
    }
}

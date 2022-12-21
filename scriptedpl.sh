node{
    stage('git checkout'){
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ckolla6127/webhook1.git']]])
    }
    stage('commands'){
    sh '''echo "building scripted piepline"
    echo "this is Build phase"
    echo "thankl you"'''
    }
    stage('build'){
    sh '''mkdir ckolla33
    cd ckolla33
    echo "hello chandra1">chandu1.txt'''
    }
    stage('build'){
        build 'Demo3'
    }
}

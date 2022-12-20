node{
    stage('git checkout'){
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ckolla6127/webhook1.git']]])
    }
    stage('commands'){
    sh '''echo "building scripted piepline"
    echo "this is Build phase"
    echo "thankl you"'''
    }
    stage('shell excute'){
        sh '''cd /home/ec2-user/
        mkdir -p ckolla1'''
    }
}

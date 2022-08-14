node {
    stage("Clone"){
        git 'git@github.com:roachmaster/raspberry-pi-64-alpine-jdk11.git'
    }

    stage("Docker Build"){
        withCredentials([usernamePassword(credentialsId: '87e61f11-079d-4052-b083-ea5859f0f85b', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
            def dockerVersion = "1.0.0-SNAPSHOT"
            dockerBuild(dockerName:"${DOCKER_USERNAME}/raspberry-pi-64-alpine-jdk11:${dockerVersion}",
                        dockerOpt:"",
                        DOCKER_PASSWORD: "${DOCKER_PASSWORD}",
                        DOCKER_USERNAME:"${DOCKER_USERNAME}")
        }
    }
}
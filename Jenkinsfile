pipeline {
     agent any
     stages {
          stage("Docker build") {
               steps {
                    sh "docker build -t localhost:5000/calculator ."
               }
          }
          stage("Docker push") {
               steps {
                    sh "docker push localhost:5000/calculator"
               }
          }
          stage("Deploy to staging") {
               steps {
                    sh "docker ps -a"
                    sh "docker run -d --rm -p 8765:8080 --name calculator localhost:5000/calculator"
               }
          }
          stage("Acceptance test") {
               steps {
                    sleep 20
                    sh "curl localhost:8765/sum?a=5\&b=6"
                    sh "chmod +x acceptance_test.sh && ./acceptance_test.sh"
               }
          }
     }
     post {
          always {
               sh "docker stop calculator"
          }
     }
}

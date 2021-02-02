pipeline {
     agent any
     stages {
          stage("Acceptance test") {
               steps {
                    sleep 10
                    sh "chmod +x acceptance_test.sh && ./acceptance_test.sh"
               }
          }
     }
}

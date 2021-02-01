pipeline {
     agent any
     stages {
          stage("Compile") {
               steps {
                    sh "./gradlew compileJava"
               }
          }
          stage("Unit test") {
               steps {
                    sh "./gradlew test"
               }
          }
          stage("Acceptance test") {
               steps {
                    sleep 30
                    sh "chmod +x acceptance_test.sh && ./acceptance_test.sh"
               }
          }
     }
}

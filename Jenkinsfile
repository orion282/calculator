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
          stage("Package") {
               steps {
                    sh "./gradlew build"
               }
          }
          stage("Docker build") {
               steps {
                    sh "docker build -t localhost:5000/calculator ."
               }
          }
          stage("Acceptance test") {
               steps {
                    sleep 60
                    sh "chmod +x acceptance_test.sh && ./acceptance_test.sh"
               } 
     }
}

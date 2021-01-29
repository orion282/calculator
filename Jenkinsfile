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
          stage("Gradle run") {
               steps {
                    sh "ps -ef | grep tomcat | awk '{print $2}' | xargs kill -9"
                    sh "./gradlew bootRun"
               }
          }
          stage("Acceptance test") {
               steps {
                    sleep 60
                    sh "chmod +x acceptance_test.sh && ./acceptance_test.sh"
               }
          } 
     }
}

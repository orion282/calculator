pipeline {
     agent any
     stages {
          stage("Compile") {
               steps {
                    sh "./gradlew compileJava"
               }
          }
          stage("Check docker") {
               steps {
                    sh "docker ps -a"
               }
          }
     }
     post {
          always {
               sh "docker stop calculator"
          }
     }
}

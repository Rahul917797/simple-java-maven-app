pipeline{
  agent any

  stages{
    stage('CheckOut'){
      steps{
        git branch: 'master', url: 'https://github.com/Rahul917797/simple-java-maven-app.git'
           }
     }

    stage('Maven Build'){
      steps{
        sh 'mvn clean package -DskipTests'
           }
     }
   }
}

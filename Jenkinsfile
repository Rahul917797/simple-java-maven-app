pipeline{
  agent any

  stages{
    stage('checkout'){
      steps{
        git branch: 'main', url: 'https://github.com/Rahul917797/Build-Triggers.git'
           }
     }

    stage('Maven Build'){
      steps{
        sh 'mvn clean package -DskipTests'
           }
     }
   }
}

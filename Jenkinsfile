
#Edited on Feature branch
node('master') 
{
  stage('ContinuousDownload') 
  {
    git 'https://github.com/selenium-saikrishna/maven.git'
  } 
  stage('ContinuousBuild') 
  {
    sh 'mvn package'
  } 
  stage('ContinuousDeployment') 
  {
   deploy adapters: [tomcat9(credentialsId: 'tomcat_creds', path: '', url: 'http://10.160.0.2:8082')], contextPath: null, war: '**/*.war'
  }
  stage('ContinuousTesting') 
  {
    git 'https://github.com/selenium-saikrishna/TestingOnLinux.git'
    
  }
  stage('ContinuousDelivery') 
  {
      input message: 'Waiting for approval !', submitter: 'Ramesh'
  }
  
  
  
  
  
  
  
  
}

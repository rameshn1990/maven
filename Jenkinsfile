

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
  stage('Build Docker Image')
		{
			
			sh 'docker build -t webapp .' 
		}
    
  }
  stage('Approval') 
  {
      input message: 'Waiting for approval !', submitter: 'Ramesh'
  }
   	
	stage('Run Docker Image')	
    	{
			sh '''docker run --name webapp -p 7080:8080 -d webapp'''
		}
	
}
  
  
  
  
  
  
  
}

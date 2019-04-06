pipeline {
	/* A Declartive Pipeline */
	agent any
	
	stages{
		stage('Build'){
		   
		   steps{
				bat 'mvn clean package'
		   
		   }
		   post {
			success{
					echo 'Now Archiving'
					archiveArtifacts artifacts: '**/target/*.war'
					}
				}		
		}
		stage('Deploy to Staging'){
			steps{
				build job: 'Deploy to Staging'
			}
		}
		stage('Deploy to Production'){
			steps{
				timeout(time:5, unit:'Days'){
					input message: 'Approve Production Deployment?'
				}
				build job: 'Deploy to Prod'
			}
			post {
				success{
					echo 'Code Deployed to Production'
			       }
				failure{
					echo 'Deployment Failed'
				}
			}
			
		}
	}
	

}

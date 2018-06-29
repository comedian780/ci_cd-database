node {
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/comedian780/ci_cd-database.git'

   }
     stage('Build') { // for display purposes

      if (isUnix()) {
          /* build docker image */
          IMAGE_EXISTS = sh(
          script: "docker images -q parcel-db",
            returnStatus : true)
          /* Remove the previous build image */
          if(IMAGE_EXISTS!=""){
            sh 'docker rmi -f "asset.allgaeu-parcel-service.com:443/parcel-db"'
          }
          sh 'docker build -t "asset.allgaeu-parcel-service.com:443/parcel-db" .'
          sh 'docker image prune -f'

      } else {
          /* build docker image */

          bat 'docker rmi -f asset.allgaeu-parcel-service.com:443/parcel-db'
          bat 'docker build -t asset.allgaeu-parcel-service.com:443/parcel-db .'
          bat 'docker image prune -f'
      }

   }
   stage('Deploy to registry'){
    if (isUnix()) {
      sh 'docker push "asset.allgaeu-parcel-service.com:443/parcel-db"'
    } else {
      bat 'docker push "asset.allgaeu-parcel-service.com:443/parcel-db"'
    }
   }
  }

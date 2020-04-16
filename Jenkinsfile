node{
stage('SCM Checkout'){
git 'https://github.com/Diptimb/Maven-Project'
}
stage('Compile Package'){
def mvnHome= tool name: 'Maven101', type: 'maven'
sh "${mvnHome}/bin/mvn package"
}
    post {
    always {
       mail to: 'deepubebarta@gmail.com',
          subject: "Status of pipeline: ${currentBuild.fullDisplayName}",
          body: "${env.BUILD_URL} has result ${currentBuild.result}"
    }
  }

}

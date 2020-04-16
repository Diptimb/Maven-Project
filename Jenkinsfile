node{
stage('SCM Checkout'){
git 'https://github.com/Diptimb/Maven-Project'
}
stage('Compile Package'){
def mvnHome= tool name: 'Maven101', type: 'maven'
sh "${mvnHome}/bin/mvn package"
}
def notify(status) {
   wrap([$class: 'BuildUser']) {
       emailext (
       subject: "${status}: Job ${env.JOB_NAME} ([${env.BUILD_NUMBER})",
       body: """
       Check console output at <a href="${env.BUILD_URL}">${env.JOB_NAME} (${env.BUILD_NUMBER})</a>""",
       to: 'deepubebart@gmail.com",
       from: 'jenkins@company.com')
   }
}
}

node {
   def app
   stage('clone repo') { 
      checkout scm
   }
   stage('Build') {
     app=docker.build("bhuvana1981/devopsdocker")
   }
   stage('Test image') {
      app.inside{
      sh ' "test passed"'
   }
}
stage('push to dockerhub') {
      docker.withregistry('https://registry.hub.docker.com', 'dhlogin')
      {
      app.push("${env.BUILD_NUMBER}")
      app.push("latest")
      }
      }
}

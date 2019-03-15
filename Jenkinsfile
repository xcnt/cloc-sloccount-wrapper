@Library('xcnt-jenkins-scripts') _

def project = 'xcnt-infrastructure'
def appName = 'cloc-sloccount-wrapper'
def label = "${appName}_${env.BRANCH_NAME}"

dockerBuildRuntime(label: label) {
    def myRepo = checkout scm
    def image = "eu.gcr.io/${project}/${appName}"
    def imageWithTag = ""

    stage('Build image') {
        loginToDocker()
        container('docker') {
            imageWithTag = buildImage(image, env.BRANCH_NAME, myRepo.GIT_COMMIT)
        }
    }

    stage('Publish') {
      publishImageToPublicDocker("xcnt/cloc-sloccount-wrapper", image, env.BRANCH_NAME, myRepo.GIT_COMMIT)
    }
}
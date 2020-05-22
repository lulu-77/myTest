node {
    def server = Artifactory.newServer url: SERVER_URL, credentialsId: CREDENTIALS
    def rtMaven = Artifactory.newMavenBuild()

    stage 'Build'
        git url: 'https://github.com/jfrogdev/project-examples.git'

    stage 'Artifactory configuration'
        rtMaven.tool = MAVEN_TOOL // Tool name from Jenkins configuration
        rtMaven.deployer releaseRepo:'automation-mvn-solution-local', snapshotRepo:'automation-mvn-sol-snapshot-local', server: server
        rtMaven.resolver releaseRepo:'libs-release', snapshotRepo:'libs-snapshot', server: server
        rtMaven.deployer.addProperty("unit-test", "pass").addProperty("qa-team", "platform", "ui")
        def buildInfo = Artifactory.newBuildInfo()
        buildInfo.env.capture = true

    stage 'Exec Maven'
    rtMaven.run
}

@NonCPS
def reportOnTestsForBuild () {
    def failedTests = []
    def build = manager.build
    if (build.getAction(hudson.tasks.junit.TestResultAction.class) == null) {
        println "No Tests"
        return true
    }
    def result = build.getAction(hudson.tasks.junit.TestResultAction.class).result
    if ((result == null)) {
        println "No test results"
        return true
    } else {
        println "Failed test count: " + result.getFailCount()
        println "Passed test count: " + result.getPassCount()
        failedTests = result.getFailedTests()
        failedTests.each { test ->
            println test.name
        }
        return (result.getFailCount())
    }
}

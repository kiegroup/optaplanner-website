/*
* This file is describing all the Jenkins jobs in the DSL format (see https://plugins.jenkins.io/job-dsl/)
* needed by the Kogito pipelines.
*
* The main part of Jenkins job generation is defined into the https://github.com/kiegroup/kogito-pipelines repository.
*
* This file is making use of shared libraries defined in
* https://github.com/kiegroup/kogito-pipelines/tree/main/dsl/seed/src/main/groovy/org/kie/jenkins/jobdsl.
*/

import org.kie.jenkins.jobdsl.model.JobType
import org.kie.jenkins.jobdsl.utils.JobParamsUtils
import org.kie.jenkins.jobdsl.KogitoJobTemplate
import org.kie.jenkins.jobdsl.Utils

jenkins_path = '.ci/jenkins'

if (Utils.isMainBranch(this)){
    setupWebsitePublishOtherJob()
}

///////////////////////////////////////////////////////////////////////////

void setupWebsitePublishOtherJob() {
    def jobParams = JobParamsUtils.getBasicJobParams(this, "optaplanner-website-publish", JobType.OTHER, "${jenkins_path}/Jenkinsfile.publish",
            "This is a pipeline job for publishing automatically the Optaplanner Website.")
    JobParamsUtils.setupJobParamsAgentDockerBuilderImageConfiguration(this, jobParams)
    jobParams.triggers = [ push: true ]
    jobParams.env.putAll([
            JENKINS_EMAIL_CREDS_ID: "${JENKINS_EMAIL_CREDS_ID}",

            BUILD_BRANCH_NAME: Utils.getGitBranch(this),
            GIT_AUTHOR: Utils.getGitAuthor(this),
            GIT_AUTHOR_CREDENTIALS_ID: Utils.getGitAuthorCredsId(this),
    ])
    KogitoJobTemplate.createPipelineJob(this, jobParams)
}
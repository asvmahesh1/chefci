#
# Cookbook:: jenkin
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'jenkin::prereqs'
include_recipe 'jenkin::jenkins-master'
include_recipe 'jenkin::nginx'

#user 'jenkins' do
# comment 'jenkins user'
#  home '/home/jenkins'
#  shell '/bin/bash'
#  action :modify
#end
jenkins_plugin 'scm-api' do
  version '2.2.6'
   notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'workflow-scm-step' do
  version '2.6'
   notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin 'workflow-api' do
  version '2.25'
   notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin 'workflow-step-api' do
  version '2.9'
   notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'mailer' do
  version '1.20'
   notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'matrix-project' do
  version '1.12'
   notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin 'structs' do
  version '1.12'
   notifies :restart, 'service[jenkins]', :immediately
end
# Install version 2.1.16 of the  Credentials Plugin plugin
jenkins_plugin 'credentials' do
  version '2.1.16'
   notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'git-client' do
  version '2.7.1'
   notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'ssh-credentials' do
  version '1.13'
   notifies :restart, 'service[jenkins]', :immediately
end

# Install version 3.7.0 of the git plugin
jenkins_plugin 'git' do
   version '3.7.0'
   notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'script-security' do
    version '1.40'
    install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'junit' do
    version '1.23'
    install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-events' do
    version '1.4.0'
    install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

# Install version 1.5.8 of the build-pipeline-plugin plugin
jenkins_plugin 'build-pipeline-plugin' do
    version '1.5.8'
    install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'token-macro' do
  version '2.3'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'pipeline-model-declarative-agent' do
  version '1.1.1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin 'pipeline-model-extensions' do
  version '1.2.7'
 install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'workflow-cps' do
  version '2.44'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'workflow-support' do
  version '2.17'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'pipeline-model-api' do
  version '1.2.7'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'run-condition' do
  version '1.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'rebuild' do
  version '1.27'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'promoted-builds' do
  version '2.31'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'promoted-builds' do
  version '2.31'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'maven-plugin' do
  version '3.1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'apache-httpcomponents-client-4-api' do
  version '4.5.3-2.1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'javadoc' do
  version '1.4'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'jsch' do
  version '0.1.54.1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin 'project-inheritance' do
  version '2.0.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'job-dsl' do
  version '1.67'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'visual-basic-6' do
  version '1.3'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'vsphere-cloud' do
  version '2.16'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'job-dsl' do
  version '1.67'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'node-iterator-api' do
  version '1.5.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'ssh-slaves' do
  version '1.25.1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'config-file-provider' do
  version '2.17'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'managed-scripts' do
  version '1.4'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'mapdb-api' do
  version '1.0.9.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'conditional-buildstep' do
  version '1.3.6'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'pubsub-light' do
  version '1.12'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'htmlpublisher' do
  version '1.14'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'favorite' do
  version '2.3.1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'variant' do
  version '1.1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-core-js' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'workflow-durable-task-step' do
  version '2.18'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'durable-task' do
  version '1.17'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin 'display-url-api' do
  version '2.2.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'workflow-multibranch' do
  version '2.17'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'branch-api' do
  version '2.0.18'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'sse-gateway' do
  version '1.15'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'jackson2-api' do
  version '2.8.10.1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'pipeline-graph-analysis' do
  version '1.6'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'pipeline-stage-step' do
  version '2.3'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'jira' do
  version '2.5.1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'p4' do
  version '1.8.4'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'multiple-scms' do
  version '0.6'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
##
jenkins_plugin  'perforce' do
  version '1.3.36'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'pipeline-github-lib' do
  version '1.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'workflow-cps-global-lib' do
  version '2.9'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'git-server' do
  version '1.7'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'ace-editor' do
  version '1.1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin  'jquery' do
  version '1.7.2-1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'jquery-detached' do
  version '1.2.1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'support-core' do
  version '2.44'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'async-http-client' do
  version '1.9.40.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'metrics' do
  version '3.1.2.10'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'cloudbees-bitbucket-branch-source' do
  version '2.2.9'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'handy-uri-templates-2-api' do
  version '2.1.6-1.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'mercurial' do
  version '2.2'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin  'workflow-job' do
  version '2.17'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin  'authentication-tokens' do
  version '1.3'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'docker-commons' do
  version '1.11'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'docker-workflow' do
  version '1.15'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin  'plain-credentials' do
  version '1.4'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin  'icon-shim' do
  version '2.0.3'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

# Install version 1.4 of the build-with-parameters plugin
jenkins_plugin 'build-with-parameters' do
  version '1.4'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

# Install version 2.0 of the  groovy plugin
jenkins_plugin 'groovy' do
  version '2.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end


jenkins_plugin 'pipeline-input-step' do
  version '2.8'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
###
jenkins_plugin 'handlebars' do
  version '1.1.1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin 'momentjs' do
  version '1.1.1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin 'workflow-basic-steps' do
  version '2.6'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'pipeline-stage-view' do
  version '2.9'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'pipeline-rest-api' do
  version '2.9'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'pipeline-build-step' do
  version '2.7'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'pipeline-milestone-step' do
  version '1.3.1'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin 'pipeline-model-definition' do
  version '1.2.7'
  install_deps true
  notifies :restart, 'service[jenkins]', :immediately
end
# Install version 2.5 of the  workflow-aggregator plugin
jenkins_plugin 'workflow-aggregator' do
  version '2.5'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
##

# Install version 1.14 of the Credentials Binding Plugin plugin
jenkins_plugin 'credentials-binding' do
  version '1.14'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

# Install version 2.35.2 of the  parameterized-trigger plugin
jenkins_plugin 'parameterized-trigger' do
  version '2.35.2'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin 'blueocean-personalization' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-pipeline-scm-api' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-rest-impl' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-events' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-pipeline-api-impl' do
  install_deps true
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-git-pipeline' do
  version '1.4.0'
  install_deps true
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-github-pipeline' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-bitbucket-pipeline' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-config' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-core-js' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin 'blueocean-dashboard' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end



jenkins_plugin 'blueocean-i18n' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-jira' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-jwt' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-commons' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin 'blueocean-pipeline-editor' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin 'blueocean-rest' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-web' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'cloudbees-folder' do
  version '6.3'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

jenkins_plugin 'jenkins-design-language' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-autofavorite' do
  version '1.2.1'
  install_deps true
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'blueocean-display-url' do
  version '2.2.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end
jenkins_plugin 'workflow-step-api' do
    version '2.14'
    install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end



# Install version 1.4.0 of the blueocean plugin
jenkins_plugin 'blueocean' do
  version '1.4.0'
  install_deps false
  notifies :restart, 'service[jenkins]', :immediately
end

#jenkins_plugin 'git' do
#  version '3.7.0'
#  notifies :restart, 'service[jenkins]', :immediately
#end
# Install version 0.3.0 of the aws-codecommit-jobs plugin
jenkins_plugin 'aws-codecommit-jobs' do
  version '0.3.0'
  install_deps true
  notifies :restart, 'service[jenkins]', :immediately
end

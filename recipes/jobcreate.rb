%w(
  execute-with-params
).each do |job_name|
  config = File.join(Chef::Config[:file_cache_path], "#{job_name}.xml")
  cookbook_file config

  # Test basic job creation
  jenkins_job job_name do
    config config
    action :create
  end
end

jenkins_command 'reload-configuration'

# execute simple job#

jenkins_job 'execute-with-params' do
  action :build
end

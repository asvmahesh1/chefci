include_recipe 'nginx'

template "#{node['nginx']['dir']}/sites-available/default" do
  source 'jenkins.conf.erb'
  owner  node['nginx']['user']
  group  node['nginx']['group']
  mode   '0644'
  notifies :reload, "service[#{node['nginx']['package_name']}]", :delayed
end

directory "/var/www" do
  owner node['nginx']['user']
  group node['nginx']['group']
  mode '0755'
  action :create
end

directory "#{node['nginx']['default_root']}" do
  owner node['nginx']['user']
  group node['nginx']['group']
  mode '0755'
  action :create
end

directory "#{node['nginx']['default_root']}/css" do
    owner node['nginx']['user']
    group node['nginx']['group']
    mode '0755'
    action :create
  end

cookbook_file "#{node['nginx']['default_root']}/css/jenkins.css" do
  source 'jenkins.css'
  owner node['nginx']['user']
  group node['nginx']['group']
  mode '0755'
  action :create
end

cookbook_file "#{node['nginx']['default_root']}/css/logo.jpg" do
  source 'logo.jpg'
  owner node['nginx']['user']
  group node['nginx']['group']
  mode '0755'
  action :create
end

cookbook_file "#{node['nginx']['default_root']}/css/chg-logo.js" do
  source 'chg-logo.js'
  owner node['nginx']['user']
  group node['nginx']['group']
  mode '0755'
  action :create
end

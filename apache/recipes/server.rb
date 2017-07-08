#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  notifies :restart, 'service[httpd]', :immediately
end

service 'httpd' do
 action [:enable, :start]
#subscribes :restart, 'template[/var/www/html/index.html]', :immediately
end


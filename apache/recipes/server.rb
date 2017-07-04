#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content '<h1> Hello World! This is Harvey Server!</h1>'
end

service 'httpd' do
 action [:enable, :start]
end


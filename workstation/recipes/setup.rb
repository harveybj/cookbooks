package 'tree' do
  action :install
end

package 'git' do
  action :install
end

file '/etc/motd' do 
  content 'This servers belongs to Harvey Bharaj!'
  action :create
  owner 'root'
  group 'root'
end


hostname = node['hostname']

file 'etc/motd' do
content "host name is : #{hostname}"
end 

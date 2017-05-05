#
# Cookbook:: db
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'postgresql-server' do
	notifies :run, 'execute[postgreql]'
end

execute 'postgresql-init'
command 'postgresql-setup initdb'
action :nothing
end

service 'postgresql' do
action [:enable, :start]
end

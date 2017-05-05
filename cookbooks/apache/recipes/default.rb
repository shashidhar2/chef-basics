#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'apache2' do
package_name 'httpd'
action :install
end
service 'httpd' do
action [:start, :enable]
end
include_recipe 'apache::website'

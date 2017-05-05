#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'apache2' do
package_name 'httpd'
end
service 'apache2' do
action[:enable, :start]
end

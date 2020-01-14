#
# Cookbook:: node_sample
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

#imports of recipes
include_recipe 'apt'
include_recipe 'nodejs'



#packages apt-get
apt_update
package 'nginx'

#services
service 'nginx' do
  action :enable
end

service 'nginx' do
  action :start
end

#npm installs
nodejs_npm 'pm2'

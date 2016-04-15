#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'minecraft::default'

version = node['minecraft']['version']

remote_file '/opt/minecraft/minecraft_server.jar' do
  source "https://s3.amazonaws.com/Minecraft.Download/versions/#{version}/minecraft_server.#{version}.jar"
  owner 'minecraft'
  group 'minecraft'
  mode 0644
  action :create
end

bash 'start_minecraft_service' do
  code <<-EOS
      chkconfig minecraft on
  EOS
end

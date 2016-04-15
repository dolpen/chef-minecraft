#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'minecraft::default'


cookbook_file '/opt/minecraft/minecraft_server.jar' do
  source 'spigot.jar'
  owner 'minecraft'
  group 'minecraft'
  mode 0644
  action :create
end

directory '/opt/minecraft/plugins' do
  owner 'minecraft'
  group 'minecraft'
  mode 0755
  action :create
end

cookbook_file '/opt/minecraft/plugins/dynmap.jar' do
  source 'dynmap.jar'
  owner 'minecraft'
  group 'minecraft'
  mode 0644
  action :create_if_missing
end

directory '/opt/minecraft/plugins/dynmap' do
  owner 'minecraft'
  group 'minecraft'
  mode 0755
  action :create
end

cookbook_file '/opt/minecraft/plugins/dynmap/configuration.txt' do
  source 'configuration.txt'
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


#
# Cookbook Name:: osmc
# Recipe:: default
#
include_recipe 'osmc::authorized_key'
include_recipe 'osmc::profile'
include_recipe 'osmc::keymapping'

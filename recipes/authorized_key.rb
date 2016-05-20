#
# Cookbook Name:: osmc
# Recipe:: default
#
directory '/home/osmc/.ssh' do
  owner 'osmc'
  group 'osmc'
  mode '0755'
  action :create
end

file 'authorized_keys' do
  path '/home/osmc/.ssh/authorized_keys'
  content data_bag_item('osmc', 'authorized_keys')['key']
  owner 'osmc'
  group 'osmc'
  mode '0755'
  action :create
end

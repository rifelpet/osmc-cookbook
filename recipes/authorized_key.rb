#
# Cookbook Name:: osmc
# Recipe:: authorized_key
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

cookbook_file 'sshd_config' do
  south 'sshd_config'
  path '/etc/ssh/sshd_config'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

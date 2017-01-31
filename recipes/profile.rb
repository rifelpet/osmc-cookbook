#
# Cookbook Name:: osmc
# Recipe:: profile
#
cookbook_file '/home/osmc/.bashrc' do
  source 'bashrc'
  user 'osmc'
  group 'osmc'
  mode '0644'
end

cookbook_file '/home/osmc/.bash_profile' do
  source 'bash_profile'
  user 'osmc'
  group 'osmc'
  mode '0644'
end

file '/etc/motd' do
  content ''
  user 'root'
  group 'root'
  mode '0644'
end
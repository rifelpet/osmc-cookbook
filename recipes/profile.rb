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
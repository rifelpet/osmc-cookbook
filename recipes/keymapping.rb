#
# Cookbook Name:: osmc
# Recipe:: keymapping
#
cookbook_file '/home/osmc/.kodi/userdata/keymaps/keymap.xml' do
  source 'keymap.xml'
  user 'osmc'
  group 'osmc'
  mode '0644'
end
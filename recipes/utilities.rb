#
# Cookbook Name:: osmc
# Recipe:: utilities
#
%w(usbutils).each do |pkg|
  package pkg do
    action :install
  end
end
#
# Cookbook Name:: osmc
# Recipe:: utilities
#
%w(usbutils alsa-utils).each do |pkg|
  package pkg do
    action :install
  end
end
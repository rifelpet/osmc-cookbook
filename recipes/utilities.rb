#
# Cookbook Name:: osmc
# Recipe:: utilities
#
%w(usbutils alsa-utils pulseaudio).each do |pkg|
  package pkg do
    action :install
  end
end
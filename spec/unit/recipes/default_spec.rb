#
# Cookbook Name:: osmc
# Spec:: default
#
require 'spec_helper'

describe 'osmc::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      stub_data_bag_item('osmc', 'authorized_keys').and_return(keys: '')
      runner = ChefSpec::SoloRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run.converge(described_recipe) }.to_not raise_error
    end
  end
end

require 'chefspec'

describe 'osmc::profile' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'Creates .bashrc file' do
    expect(chef_run).to create_cookbook_file('/home/osmc/.bashrc').with(owner: 'osmc', group: 'osmc', mode: '0644')
  end
end
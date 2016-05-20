require 'chefspec'

describe 'osmc::authorized_key' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  before do
  	stub_data_bag_item("osmc", "authorized_keys").and_return(key: 'this is my key')
  end

  it 'Creates .ssh directory' do
    expect(chef_run).to create_directory('/home/osmc/.ssh').with(owner: 'osmc', group: 'osmc')
  end

  it 'Creates authorized_keys file' do
  	expect(chef_run).to create_file('/home/osmc/.ssh/authorized_keys').with(owner: 'osmc', group: 'osmc', content: 'this is my key')
  end
end
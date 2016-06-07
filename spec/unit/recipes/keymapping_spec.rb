require 'chefspec'

describe 'osmc::keymapping' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'Creates key mapping file' do
    expect(chef_run).to create_cookbook_file('/home/osmc/.kodi/userdata/keymaps/keymap.xml')
      .with(owner: 'osmc', group: 'osmc')
  end
end
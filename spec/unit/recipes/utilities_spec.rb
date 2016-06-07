require 'chefspec'

describe 'osmc::utilities' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'Installs usbutils package' do
    expect(chef_run).to install_package('usbutils')
  end
end
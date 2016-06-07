require 'chefspec'

describe 'osmc::utilities' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  %w(usbutils alsa-utils).each do |pkg|
    it "Installs #{pkg} package" do
      expect(chef_run).to install_package(pkg)
    end
  end
end
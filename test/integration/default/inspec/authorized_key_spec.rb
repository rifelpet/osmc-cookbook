describe 'authorized_key' do

  describe file('/home/osmc/.ssh/authorized_keys') do
    it { should exist }
    it { should be_owned_by('osmc') }
    it { should be_grouped_into('osmc') }
  end
end
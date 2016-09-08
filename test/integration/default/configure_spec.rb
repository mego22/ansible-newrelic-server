control 'NewRelic Sysmond Config' do
  title 'Check newrelic-sysmod config file existence'
  desc ' Ensure the config file is a file, readable, writable and owned by root'
  describe file('/etc/newrelic/nrsysmond.cfg') do
    it { should be_file }
    it { should be_readable }
    it { should be_writable }
    it { should be_owned_by 'root' }
  end
end

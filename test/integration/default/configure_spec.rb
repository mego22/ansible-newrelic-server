describe file('/etc/newrelic/nrsysmond.cfg') do
  it { should be_file }
  it { should be_readable }
  it { should be_writable }
  it { should be_owned_by 'root' }
end

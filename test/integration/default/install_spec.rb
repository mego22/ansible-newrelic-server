control 'NewRelic Sysmond Package' do
  title 'Check newrelic-sysmod installed'
  desc 'Ensure that newrelic-sysmond is installed.'
  describe package('newrelic-sysmond') do
    it { should be_installed }
  end
end

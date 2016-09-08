control 'NewRelic Sysmond Service' do
  title 'Ensure newrelic-sysmond is enabled and running.'
  desc 'Ensure newrelic-sysmond is enabled and running.'
  describe service('newrelic-sysmond') do
    it { should be_enabled }
    it { should be_running }
  end
end

# encoding: utf-8
# copyright: 2017, Matt Stratton

title 'Directory Tests'

control 'log-1.0' do                        
  impact 0.7                                
  title 'Ownership of /var/log'             
  desc 'The /var/log directory should be owned by root'
  describe file('/var/log') do
    it { should be_directory }
    it { should be_owned_by 'root' }
  end
end

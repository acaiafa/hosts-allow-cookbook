require 'serverspec'
set :backend, :exec


describe file('/etc/hosts.allow') do
    it { should be_file }
    it { should be_owned_by 'root' }
end


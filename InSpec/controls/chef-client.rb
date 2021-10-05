title 'chef-client version'
control 'chef-client-1.0' do
    impact 1.0
    title 'Chef-client version'
    desc 'Chef-client version'
    describe command('chef-client --version') do
      its('stdout') { should match (/Chef: 1[7]/) }
    end
end


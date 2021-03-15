if os.linux?
  describe user('root'), :skip do
    it { should exist }
  end

  %w[samba-winbind samba-winbind-clients pam_krb5 bind-utils].each do |pkg|
    describe packages(pkg) do
      its('statuses') { should cmp 'installed' }
    end
  end
end

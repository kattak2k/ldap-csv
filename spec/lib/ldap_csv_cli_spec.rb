# frozen_string_literal: true

require 'ldap_csv_cli'

describe Ldapcli do
  context 'parsing tests' do
    subject { Ldapcli.new }

    it 'add LDAP record' do
      expect(subject.add_ldap_entry('ou=people,dc=example,dc=org')).to eq('record created successfully')
    end

    it 'remove LDAP record' do
      expect(subject.remove_ldap_entry('ou=people,dc=example,dc=org')).to eq('Record deleted Successfully')
    end

    it 'List LDAP record' do
      expect(subject.read_ldap_entry.count).to be >= 0
    end
  end
end

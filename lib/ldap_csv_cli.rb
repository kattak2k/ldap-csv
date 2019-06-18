# frozen_string_literal: true
require 'file_storage'
require 'thor'
# load the file storage file
require File.expand_path('lib/file_storage.rb')

# Class for LDAP cli
class Ldapcli < Thor
  class_option :verbose, type: :boolean, aliases: '-v'

  desc 'read_ldap_entry', 'List LDAP records '
  def read_ldap_entry
    FileStorage.new.read_file
  end

  desc 'add_ldap_entry USERNAME', 'Add new LDAP record  eq. ou=people,dc=example,dc=org'
  def add_ldap_entry(_username)
    FileStorage.new(_username).write_file
  end

  desc 'remove_ldap_entry USERNAME', 'remove a LDAP record eq. ou=people,dc=example,dc=org'
  def remove_ldap_entry(username)
    FileStorage.new(username).delete_file
  end
end

Ldapcli.start(ARGV)

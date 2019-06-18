require 'pstore'
@@files=[]

class FileStorage
  def initialize(_uname = 'katta')
    @store = PStore.new('/tmp/ldap_csv.txt')
    @username = _uname

  end

  def read_file
    @store.transaction(true) { @store.roots.each { |x| @@files << @store[x] } }
    @@files.uniq!
  end

  def write_file
    con = @store.transaction do |s|
      s[:username] = @username
      s[:cn] = 'Ravi'
      s[:sn] = 'Ravi Katta'
      s[:mail] = 'jay.hom4u@gmail.com'
      s[:uid] = '123999'
      s[:homeDirectory] = '/app/home/'
      s[:uidNumber] = 'N1234'
      s[:gidNumber] = 'G12345674'
    end

    p con ? 'record created successfully' : 'failed to create a record'
  end

  def delete_file
    @store.transaction do |s|
      s.delete(@username)
    end
    p 'Record deleted Successfully'
  end

  def list_files
    @store.transaction { |s| p s }
  end
end

require 'csv'

class Customer < ActiveRecord::Base
  attr_accessible :firstname, :hashcode, :lastname, :verified


  def self.import(file)
    CSV.foreach(file.path, :encoding => 'windows-1251:utf-8', headers: true) do |row|
    	hashcode = SecureRandom.hex(4)
      Customer.create! row.to_hash.merge(hashcode: hashcode)
    end
  end

end

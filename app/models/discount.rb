require 'csv'

class Discount < ActiveRecord::Base
  attr_accessible :description, :location, :logo, :name, :picture, :featured, :phone
 # attr_accessor :picture_file_name
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "80x80>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "80x80>" }, :default_url => "/images/:style/missing.png"

  def self.import(file)
    CSV.foreach(file.path, :encoding => 'windows-1251:utf-8', headers: true) do |row|
      Discount.create! row.to_hash
    end
  end

end

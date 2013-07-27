class Discount < ActiveRecord::Base
  attr_accessible :description, :location, :logo, :name, :picture, :featured, :phone
 # attr_accessor :picture_file_name
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "80x80>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "80x80>" }, :default_url => "/images/:style/missing.png"

end

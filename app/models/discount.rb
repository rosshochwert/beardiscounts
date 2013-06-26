class Discount < ActiveRecord::Base
  attr_accessible :description, :location, :logo, :name
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "50x50>" }, :default_url => "/images/:style/missing.png"

end

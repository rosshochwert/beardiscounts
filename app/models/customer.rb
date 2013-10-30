class Customer < ActiveRecord::Base
  attr_accessible :firstname, :hashcode, :lastname, :verified
end

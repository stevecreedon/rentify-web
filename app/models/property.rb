class Property < ActiveRecord::Base
  attr_accessible :description, :site_id, :address_id, :title

  has_one  :site
  has_one  :address

  has_many :directions
end

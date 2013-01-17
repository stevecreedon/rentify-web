class Site < ActiveRecord::Base
  attr_accessible :domain, :subdomain, :style, :title, :address_id

  belongs_to  :address

  has_many :properties
end

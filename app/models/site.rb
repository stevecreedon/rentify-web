class Site < ActiveRecord::Base
  attr_accessible :domain, :subdomain, :style, :title, :address_id, :email, :phone

  belongs_to  :address

  has_many :properties
end

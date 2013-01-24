class User < ActiveRecord::Base
  attr_accessible :email, :name, :provider, :password

  has_many :properties
  has_many :sites

end

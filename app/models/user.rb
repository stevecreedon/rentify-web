class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :name, :provider, :password

  has_many :properties
  has_many :sites

end

class PropertyPhoto < ActiveRecord::Base
  include Rails.application.routes.url_helpers
  attr_accessible :image, :property

  belongs_to :property

  mount_uploader :image, PhotoUploader

end


class PhotosController < ApplicationController
  def index
    @property = current_site.user.properties.first
  end
end

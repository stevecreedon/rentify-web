class PhotosController < ApplicationController
  def index
    @property = current_site.try(:properties).try(:first)

    if request.xhr?
      render layout: false
    else
      render
    end
  end
end

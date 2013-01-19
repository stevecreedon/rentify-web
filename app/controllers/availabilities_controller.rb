class AvailabilitiesController < ApplicationController
  def index
    @property = current_site.try(:properties).try(:first)
    @articles = @property.articles.where(group: 'availability')

    if request.xhr?
      render layout: false
    else
      render
    end
  end
end

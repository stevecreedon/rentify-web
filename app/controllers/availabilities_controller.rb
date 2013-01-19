class AvailabilitiesController < ApplicationController
  def index
    @property = current_site.properties.first
    @calendar = @property.calendars.where(provider: 'google').first
    @articles = @property.articles.where(group: 'availability')

    if request.xhr?
      render layout: false
    else
      render
    end
  end
end

class AvailabilitiesController < ApplicationController
  def index
    @property = current_site.user.properties.first
    @calendar = @property.calendars.where(provider: 'google').first
    @articles = @property.articles.where(group: 'availability')
  end
end

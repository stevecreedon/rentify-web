class AvailabilitiesController < ApplicationController
  def index
    @calendar = @property.calendars.where(provider: 'google').first
    @articles = @property.articles.where(group: 'availability').decorate
  end
end

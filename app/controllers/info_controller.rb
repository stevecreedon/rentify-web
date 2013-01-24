class InfoController < ApplicationController
  def site_not_found
    render layout: 'application'
  end

  def terms
    @property = current_site.user.properties.first
    @articles = @property.articles.where(group: 'terms')
  end
end

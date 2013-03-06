class InfoController < ApplicationController
  def site_not_found
    render layout: 'application'
  end

  def terms
    @articles = @property.articles.where(group: 'terms').decorate
  end
end

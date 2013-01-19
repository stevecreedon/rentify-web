class InfoController < ApplicationController
  def site_not_found
    render layout: 'application'
  end

  def terms
    @property = current_site.try(:properties).try(:first)
    @articles = @property.articles.where(group: 'terms')

    if request.xhr?
      render layout: false
    else
      render
    end
  end
end

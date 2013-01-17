class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :set_layout

  def current_site
    @current_site ||= begin
      if request.domain == configatron.domain
        Site.where(subdomain: request.subdomain).first
      else
        Site.where(domain: "#{request.subdomain}.#{request.domain}").first
      end
    end
  end

private
  def set_layout
    current_site.style || 'style_01'
  end
end

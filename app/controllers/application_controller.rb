class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from SiteNotFound, with: :site_not_found_error

  helper_method :current_site

  layout :set_layout

  def site_not_found_error
    redirect_to info_site_not_found_path
  end

protected

  def current_site
    @current_site ||= begin
      if request.domain == configatron.domain
        site = Site.where(subdomain: request.subdomain).first
      else
        site = Site.where(domain: "#{request.subdomain}.#{request.domain}").first
      end
      raise SiteNotFound unless site

      site
    end
  end

private

  def set_layout
    if request.xhr? 
      false
    else
      current_site.style || 'style_01'
    end
  end

end

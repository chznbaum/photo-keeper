class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  set_current_tenant_through_filter
  before_action :set_current_site_by_subdomain

  def set_current_site_by_subdomain(site = :site, subdomain = :subdomain)
    if request.subdomains.last
      current_site = Site.where(subdomain => request.subdomains.last.downcase).first
      set_current_tenant(current_site)
    end
  end
end

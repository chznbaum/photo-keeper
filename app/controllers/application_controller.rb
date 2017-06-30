class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  set_current_tenant_by_subdomain(:site, :subdomain)
end

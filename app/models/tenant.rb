class Tenant < ApplicationRecord
  after_create :create_tenant
  validates_presence_of :name, :subdomain, :user_id
  belongs_to :user

  def self.current
    tenant = Tenant.find_by subdomain:Apartment::Tenant.current
    raise ::Apartment::TenantNotFound, 'Unable to find tenant' unless tenant
    tenant
  end

  def switch!
    Apartment::Tenant.switch! subdomain
  end

  private

  def create_tenant
    Apartment::Tenant.create subdomain
  end

  def delete_tenant
    Apartment::Tenant.drop subdomain
  end
end

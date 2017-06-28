class Tenant < ApplicationRecord
  validates_presence_of :name, :subdomain, :user_id
  belongs_to :user
end

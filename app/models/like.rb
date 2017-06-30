class Like < ApplicationRecord
  attr_accessor :comment_id, :update_id
  belongs_to :site
  belongs_to :user
  belongs_to :likeable, polymorphic: true
  acts_as_tenant(:site)
  validates :user_id, uniqueness: { scope: [:likeable_id, :likeable_type]}
end

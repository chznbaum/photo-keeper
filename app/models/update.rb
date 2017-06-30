class Update < ApplicationRecord
  belongs_to :site
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  acts_as_tenant(:site)
  default_scope -> { order(created_at: :desc) }
end

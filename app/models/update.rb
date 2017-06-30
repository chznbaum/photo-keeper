class Update < ApplicationRecord
  belongs_to :site
  has_many :comments, as: :commentable, dependent: :destroy
  acts_as_tenant(:site)
end

class Comment < ApplicationRecord
  belongs_to :site
  belongs_to :user
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable, dependent: :destroy
  acts_as_tenant(:site)
end

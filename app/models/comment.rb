class Comment < ApplicationRecord
  belongs_to :site
  belongs_to :member
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  acts_as_tenant(:site)
  validates_presence_of :content, :member_id
end

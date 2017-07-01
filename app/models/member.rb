class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :site
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  acts_as_tenant(:site)
end

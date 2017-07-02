class Kid < ApplicationRecord
  belongs_to :site
  acts_as_tenant(:site)
  has_many :updates
end

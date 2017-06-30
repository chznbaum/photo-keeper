class Update < ApplicationRecord
  belongs_to :site
  acts_as_tenant(:site)
end

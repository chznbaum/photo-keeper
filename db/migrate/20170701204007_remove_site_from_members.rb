class RemoveSiteFromMembers < ActiveRecord::Migration[5.1]
  def change
    remove_reference :members, :site, index: true
    add_reference :members, :site, foreign_key: true
  end
end

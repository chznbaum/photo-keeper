class RemoveUserFromComments < ActiveRecord::Migration[5.1]
  def change
    remove_reference :comments, :user, index: true
    add_reference :comments, :member, index: true
  end
end

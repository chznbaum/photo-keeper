class RemoveUserFromLikes < ActiveRecord::Migration[5.1]
  def change
    remove_reference :likes, :user, foreign_key: true
    add_reference :likes, :member, foreign_key: true
    remove_reference :comments, :member, index: true
    add_reference :comments, :member, foreign_key: true
  end
end

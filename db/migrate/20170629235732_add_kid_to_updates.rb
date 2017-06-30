class AddKidToUpdates < ActiveRecord::Migration[5.1]
  def change
    add_reference :updates, :kid, foreign_key: true
  end
end

class CreateUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :updates do |t|
      t.text :content
      t.text :upload

      t.timestamps
    end
  end
end

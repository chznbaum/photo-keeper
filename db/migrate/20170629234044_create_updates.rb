class CreateUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :updates do |t|
      t.text :upload
      t.text :content
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end

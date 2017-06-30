class CreateKids < ActiveRecord::Migration[5.1]
  def change
    create_table :kids do |t|
      t.string :name
      t.integer :age
      t.text :photo
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end

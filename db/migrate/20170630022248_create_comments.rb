class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :commentable_id
      t.string :commentable_type
      t.belongs_to :user
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end

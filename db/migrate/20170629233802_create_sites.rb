class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :subdomain
      t.belongs_to :user

      t.timestamps
    end
  end
end

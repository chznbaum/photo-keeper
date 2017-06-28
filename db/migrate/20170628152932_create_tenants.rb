class CreateTenants < ActiveRecord::Migration[5.1]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :subdomain
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end

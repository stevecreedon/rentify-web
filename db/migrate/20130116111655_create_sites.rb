class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :title
      t.string :subdomain
      t.string :domain
      t.string :style
      t.integer :address_id

      t.timestamps
    end
  end
end

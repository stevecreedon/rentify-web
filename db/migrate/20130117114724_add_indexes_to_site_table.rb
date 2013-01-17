class AddIndexesToSiteTable < ActiveRecord::Migration
  def change
    add_index :sites, :subdomain
    add_index :sites, :domain
  end
end

class AddLongitudeToSites < ActiveRecord::Migration[6.0]
  def change
    add_column :sites, :longitude, :decimal
  end
end

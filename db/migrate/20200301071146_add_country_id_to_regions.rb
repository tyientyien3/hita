class AddCountryIdToRegions < ActiveRecord::Migration[5.2]
  def change
    add_column :regions, :country_id, :integer
  end
end

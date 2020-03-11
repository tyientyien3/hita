class AddRegionNameToRegions < ActiveRecord::Migration[5.2]
  def change
    add_column :regions, :region_name, :string
  end
end

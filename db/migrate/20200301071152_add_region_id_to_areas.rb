class AddRegionIdToAreas < ActiveRecord::Migration[5.2]
  def change
    add_column :areas, :region_id, :integer
  end
end

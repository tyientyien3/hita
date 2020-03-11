class AddAreaNameToAreas < ActiveRecord::Migration[5.2]
  def change
    add_column :areas, :area_name, :string
  end
end

class AddCountryNameToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :country_name, :string
  end
end

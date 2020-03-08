class AddCountryIdToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :country_id, :integer
  end
end

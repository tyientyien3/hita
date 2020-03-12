class AddColumnsToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :questioner_id, :integer
    add_column :questions, :questionee_id, :integer
  end
end

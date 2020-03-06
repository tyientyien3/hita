class AddColumnToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :question, :text
    add_column :questions, :answer, :text
  end
end

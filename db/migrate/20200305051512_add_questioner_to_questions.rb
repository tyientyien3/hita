class AddQuestionerToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :questioner, foreign_key: true
  end
end

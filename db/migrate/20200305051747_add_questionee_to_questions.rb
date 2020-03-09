class AddQuestioneeToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :questionee, foreign_key: true
  end
end

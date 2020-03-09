class ChangeColumnToQuestions < ActiveRecord::Migration[5.2]
  def up
    change_column :questions, :region_id, :integer, null: false
  end

  # 変更前の状態
  def down
    change_column :questions, :region_id, :integer
  end
end

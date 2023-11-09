class SetDefaultOfIsCorrectInMultipleChoice < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:multiple_choices, :is_correct, false)
  end
end

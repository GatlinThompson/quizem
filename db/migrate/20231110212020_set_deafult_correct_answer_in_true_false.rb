class SetDeafultCorrectAnswerInTrueFalse < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:true_falses, :correct_answer, true)
  end
end

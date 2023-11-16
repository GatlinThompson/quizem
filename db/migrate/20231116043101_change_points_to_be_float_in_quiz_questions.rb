class ChangePointsToBeFloatInQuizQuestions < ActiveRecord::Migration[7.0]
  def change
    change_column :quiz_questions, :points, :float
  end
end

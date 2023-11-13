class ChangePointsToBeIntegerInQuizQuestions < ActiveRecord::Migration[7.0]
  def change
    change_column :quiz_questions, :points, :integer
  end
end

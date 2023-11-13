class AddPointsToQuizQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions_quizzes, :points, :integer
  end
end

class RenamePointsIntegerToPointsInQuizQuestion < ActiveRecord::Migration[7.0]
  def change
    rename_column :quiz_questions, :points_integer, :points
  end
end

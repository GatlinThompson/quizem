class RenameHeaderToQuestionInQuestions < ActiveRecord::Migration[7.0]
  def change
    rename_column :questions, :header, :title
  end
end

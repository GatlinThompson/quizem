class CreateMultipleChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :multiple_choices do |t|
      t.belongs_to :question, null: false, foreign_key: true
      t.string :option
      t.boolean :is_correct

      t.timestamps
    end
  end
end

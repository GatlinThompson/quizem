class CreateTrueFalses < ActiveRecord::Migration[7.0]
  def change
    create_table :true_falses do |t|
      t.belongs_to :question, null: false, foreign_key: true
      t.boolean :correct_answer

      t.timestamps
    end
  end
end

class CreateMatchings < ActiveRecord::Migration[7.0]
  def change
    create_table :matchings do |t|
      t.belongs_to :question, null: false, foreign_key: true
      t.string :prompt
      t.string :answer

      t.timestamps
    end
  end
end

class CreateCreateJoinTableBankQuestions < ActiveRecord::Migration[7.0]
  def change
    create_join_table :banks, :questions do |t|
      # t.index [:bank_id, :question_id]
      # t.index [:questions_id, :bank_id]

      t.timestamps
    end
  end
end

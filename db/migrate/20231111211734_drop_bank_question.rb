class DropBankQuestion < ActiveRecord::Migration[7.0]
  def change
    drop_table :banks_questions
  end
end

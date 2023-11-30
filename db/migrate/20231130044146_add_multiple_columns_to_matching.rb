class AddMultipleColumnsToMatching < ActiveRecord::Migration[7.0]
  def change
    rename_column :matchings, :prompt, :prompt_1
    rename_column :matchings, :answer, :answer_1
    add_column :matchings, :prompt_2, :string
    add_column :matchings, :answer_2, :string
    add_column :matchings, :prompt_3, :string
    add_column :matchings, :answer_3, :string
    add_column :matchings, :prompt_4, :string
    add_column :matchings, :answer_4, :string
    add_column :matchings, :choice_1, :string
    add_column :matchings, :choice_2, :string
    add_column :matchings, :choice_3, :string
    add_column :matchings, :choice_4, :string
  end
end

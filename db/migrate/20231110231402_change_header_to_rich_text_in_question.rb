class ChangeHeaderToRichTextInQuestion < ActiveRecord::Migration[7.0]
  def change
    change_column :questions, :header, :rich_text
  end
end

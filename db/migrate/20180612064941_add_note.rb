class AddNote < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :side_note, :text
  end
end

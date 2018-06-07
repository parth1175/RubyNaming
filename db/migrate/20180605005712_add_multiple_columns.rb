class AddMultipleColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :case, :string
    add_column :categories, :character, :string
    add_column :categories, :plurality, :string
  end
end

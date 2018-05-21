class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :instance
      t.references :rnaming, foriegn_key: true
      t.timestamps
    end
  end
end

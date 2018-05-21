class CreateRnamings < ActiveRecord::Migration[5.1]
  def change
    create_table :rnamings do |t|

      t.string :area
      t.timestamps
    end
  end
end

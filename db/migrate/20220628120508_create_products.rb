class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.text :details

      t.timestamps
    end
  end
end

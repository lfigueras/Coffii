class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :price
      t.text :details
      t.string :product_image

      t.timestamps
    end
  end
end

class RemoveDetailsToOrderModel < ActiveRecord::Migration[6.1]
  def up
    remove_columns :orders, :product_image, :details
  end
end

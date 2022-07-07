class RemoveDetailsToOrder < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :price, :string
  end
end

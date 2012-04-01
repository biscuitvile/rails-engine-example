class AddUserIdToOrders < ActiveRecord::Migration
  def change
    add_column :store_orders, :user_id, :integer
    add_index :store_orders, :user_id
  end
end

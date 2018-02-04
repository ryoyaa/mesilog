class AddShopIdToMenus < ActiveRecord::Migration[5.1]
  def change
    add_column :menus, :shop_id, :integer
  end
end

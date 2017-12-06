class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.integer :user_id
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end

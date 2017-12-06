class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.integer :user_id
      t.string :name       
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end

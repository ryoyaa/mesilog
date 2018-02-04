class ChangeDatatypeImageOfShops < ActiveRecord::Migration[5.1]
  def change
    change_column :shops, :image, :string
  end
end

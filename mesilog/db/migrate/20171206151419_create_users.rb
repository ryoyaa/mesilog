class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name       null: false
      t.string :email      nule: false

      t.timestamps
    end
  end
end

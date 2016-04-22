class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :price, null: false
      t.timestamps null: false
    end
  end
end

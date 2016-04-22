class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :quantity, null: false
      t.integer :table, null: false
    end
  end
end

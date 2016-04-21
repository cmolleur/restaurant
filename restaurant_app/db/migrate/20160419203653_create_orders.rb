class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :party, null: false
      t.references :food, null: false
      t.references :user, null: false
      t.boolean :is_completed, default: false
      t.timestamps null: false
    end
  end
end

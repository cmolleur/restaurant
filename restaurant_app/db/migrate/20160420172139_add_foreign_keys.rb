class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :orders, :users
    add_foreign_key :orders, :parties
    add_foreign_key :orders, :foods
  end
end

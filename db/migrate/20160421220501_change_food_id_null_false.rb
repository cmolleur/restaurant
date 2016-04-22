class ChangeFoodIdNullFalse < ActiveRecord::Migration
  def change
    change_column :orders, :food_id, :integer, :null => true
  end
end

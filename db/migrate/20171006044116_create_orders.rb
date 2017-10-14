class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.belongs_to :customer
      t.belongs_to :food_cart

      t.timestamps
    end
  end
end

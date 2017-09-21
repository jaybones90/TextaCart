class CreateConversations < ActiveRecord::Migration[5.1]
  def change
    create_table :conversations do |t|
      t.string :food_cart_id
      t.string :customer_id
      t.timestamps
    end
  end
end

class CreateFoodCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :food_carts do |t|
      t.string :name
      t.string :phone_number
      t.string :user_id
    end
  end
end

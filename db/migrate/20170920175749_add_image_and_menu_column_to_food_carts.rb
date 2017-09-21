class AddImageAndMenuColumnToFoodCarts < ActiveRecord::Migration[5.1]
  def up
    add_attachment :food_carts, :image
    add_attachment :food_carts, :menu
  end

  def down
    remove_attachment :food_carts, :image
    remove_attachment :food_carts, :menu
  end
end

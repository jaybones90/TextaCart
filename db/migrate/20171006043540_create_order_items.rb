class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.string :item_name
      t.integer :quantity
      t.decimal :price, :precision => 8, :scale => 2
      t.string :notes
      t.belongs_to :order
    end
  end
end

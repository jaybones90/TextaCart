class Order < ApplicationRecord
  has_many :order_items
  belongs_to :customer, dependent: :destroy
  belongs_to :food_cart, dependent: :destroy
end

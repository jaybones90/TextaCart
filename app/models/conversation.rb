class Conversation < ApplicationRecord
  has_many :messages
  belongs_to :food_cart
  belongs_to :customer

end

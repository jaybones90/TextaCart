class Conversation < ApplicationRecord
  after_create_commit { BroadcastConversationJob.perform_later self}

  has_many :messages
  belongs_to :food_cart
  belongs_to :customer, dependent: :destroy

end

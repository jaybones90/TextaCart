class Customer < ApplicationRecord
  has_many :conversations, dependent: :destroy
  has_many :food_carts, :through => :conversations

  def self.new_customer?
    if Customer.exists?(phone_number: params['From'])
      customer = Customer.find_by phone_number: params['From']
    else
      customer = Customer.create(name: 'unknown', phone_number: params['From'])
    end
  end

end

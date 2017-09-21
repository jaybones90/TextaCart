require 'rails_helper'

describe User do
  it { should have_one :food_cart }
end

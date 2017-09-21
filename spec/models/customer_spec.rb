require 'rails_helper'

describe Customer do
  it { should have_many :conversations }
  it { should have_many(:food_carts).through(:conversations) }
end

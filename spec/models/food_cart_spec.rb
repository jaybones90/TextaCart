require 'rails_helper'

describe FoodCart do
  it { should belong_to :user }
  it { should have_many :conversations }
  it { should have_many(:customers).through(:conversations) }
end

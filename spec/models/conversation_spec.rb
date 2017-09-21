require 'rails_helper'

describe Conversation do
  it { should have_many :messages }
  it { should belong_to :customer }
  it { should belong_to :food_cart }
end

class Seed



  def self.Begin
    seed = Seed.new
    seed.generate_users
    seed.generate_food_carts
    seed.generate_customers
    seed.generate_conversations
    seed.generate_messages
  end

  def generate_users
    2.times do |i|
      User.create!(
        username: Faker::Internet.user_name,
        email: Faker::Internet.safe_email,
        password: 1234567
      )
    end
  end

  def generate_food_carts
    2.times do |i|
      cart = FoodCart.create!(
        name: Faker::Ancient.titan,
        phone_number: "+19713024413",
        menu: File.new("app/assets/images/sample-menu.pdf"),
        image: File.new("app/assets/images/sample-cart-image.jpg"),
        user_id: i + 1
      )
      cart.locations.create!(
        address: Faker::Address.street_address,
        city: "Portland",
        state: "Oregon",
        zip: Faker::Address.zip
      )
      puts "created #{i} carts"
    end
  end

  def generate_customers
    numbers = ["+18584885368", "+16503021485", "+16508685904", "+16503028563", "+16234323432", "+16342345765", "+16503896677", "+16339998877", "+3432221111", "+16557764564"]
    10.times do |i|
      customer = Customer.create!(
        name: Faker::RickAndMorty.character,
        phone_number: numbers[i]
      )
      puts "created #{i} customers"
    end
  end

  def generate_messages
    numbers = ["+18584885368", "+16503021483", "+16508685904", "+16503028563", "+16234323432", "+16342345765", "+16503896677", "+16339998877", "+3432221111", "+16557764564"]
      25.times do |i|
        Message.create!(
          from_number: numbers.sample,
          to_number: "+19713024413",
          content: Faker::RickAndMorty.quote,
          conversation_id: (1..10).to_a.sample
        )
        puts "created #{i} messages"
    end
  end

  def generate_conversations
    10.times do |i|
      Conversation.create!(
        food_cart_id: (1..2).to_a.sample,
        customer_id: i + 1
      )
      puts "created #{i} conversations"
    end
  end

end

Seed.Begin

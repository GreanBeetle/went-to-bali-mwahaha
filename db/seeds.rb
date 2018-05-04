Product.destroy_all

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    20.times do |i|
      image = Faker::Avatar.image("my-own-slug", "50x50", "jpg")
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop, image: image)
    end
  end
end

Seed.begin

p "Created #{Product.count} products."

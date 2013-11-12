class Transaction < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :amount, :place, :place_id, :category, :category_id


  def self.generate_random
    create({
      amount: rand(1000) + 1,
      place: Faker::Company.name,
      category: Faker::Company.bs
    })
  end

  def self.place_names
    pluck(:place).uniq
  end
end

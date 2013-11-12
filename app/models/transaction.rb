class Transaction < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :amount, :place, :place_id, :category, :category_id
  belongs_to :place
  belongs_to :category

  def self.generate_random
    place = Place.all.take(1).first
    create({
      amount: rand(1000) + 1,
      place: place,
      category: place.categories.take(1).first
    })
  end

  def self.place_names
    pluck(:place).uniq
  end
end

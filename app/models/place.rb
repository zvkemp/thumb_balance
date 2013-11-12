class Place < ActiveRecord::Base
  attr_accessible :name, :categories, :category_ids

  has_and_belongs_to_many :categories
  has_many :transactions

  def to_s
    name
  end
end

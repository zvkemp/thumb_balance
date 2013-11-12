class Category < ActiveRecord::Base
  attr_accessible :name, :places, :place_ids
  has_and_belongs_to_many :places
  has_many :transactions
end

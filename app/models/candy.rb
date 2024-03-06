# Class represent candies table on database
class Candy < ApplicationRecord
  validates :name, :description, :rate, presence: true
end

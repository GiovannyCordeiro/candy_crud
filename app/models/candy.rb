class Candy < ApplicationRecord
  validates :name, :description, :rate, presence: true
end

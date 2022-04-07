class Fruit < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end

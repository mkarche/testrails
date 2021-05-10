class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :tagline, presence: true
  #validates :category, presence: true, inclusion: {in: %w(Education Music Pro Sport), message: "%{value} not a valid category"}
end

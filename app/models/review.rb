class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, format: { with: /\A[0-5]+\z/, message: "only allows number" }
end

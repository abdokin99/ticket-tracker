class Article < ApplicationRecord
  has_one_attached :photo

  validates :price, numericality: { greater_than: 0 }
  validates :code, format: { with: /\A\d{10}\z/, message: "should be a 10-digit number" }
  validates :code, uniqueness: true
  validates_presence_of :photo, message: "must exist"
end

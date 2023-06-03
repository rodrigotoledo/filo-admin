class Category < ApplicationRecord
  include ImageUrl
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_one_attached :image
  validates :name, presence: true, uniqueness: true

  
end

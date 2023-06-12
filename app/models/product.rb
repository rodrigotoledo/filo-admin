class Product < ApplicationRecord
  belongs_to :category
  include ImageUrl
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_one_attached :image
  validates :name, presence: true, uniqueness: true
  validates :description, :image, :price, :category, presence: true
  has_many :product_ratings

  def self.featureds
    where(featured: true)
  end

  def rating
    product_ratings.average(:rating) || 0
  end

  def final_price
    discounted_amount = price * (discount.to_f / 100.0)
    final_price = price - discounted_amount
    final_price.round(2)
  end

  enum status: {
    active: 'Ativo',
    inactive: 'Inativo',
    archived: 'Arquivado'
  }
end

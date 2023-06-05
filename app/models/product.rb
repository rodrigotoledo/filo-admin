class Product < ApplicationRecord
  belongs_to :category
  include ImageUrl
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_one_attached :image
  validates :name, presence: true, uniqueness: true
  validates :description, :image, :price, :category, :variation, presence: true

  def self.featureds
    where(featured: true)
  end

  enum status: {
    active: 'Ativo',
    inactive: 'Inativo',
    archived: 'Arquivado'
  }
end

class Product < ApplicationRecord
  include ImageUrl
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_one_attached :image
  validates :name, presence: true, uniqueness: true
  validates :description, :image, :price, presence: true

  def self.featureds
    where(featured: true)
  end

  enum status: {
    active: 'Ativo',
    inactive: 'Inativo',
    archived: 'Arquivado'
  }
end

class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_one_attached :image
  validates :name, presence: true, uniqueness: true

  def image_url
    if image.attached?
      Rails.application.routes.url_helpers.rails_blob_url(image)
    else
      nil
    end
  end
end

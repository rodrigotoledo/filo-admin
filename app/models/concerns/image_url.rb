# app/models/concerns/image_url.rb
module ImageUrl
  extend ActiveSupport::Concern

  included do
    def image_url
      if image.attached?
        Rails.application.routes.default_url_options[:host] = ENV['API_BASE_URL']
        Rails.application.routes.url_helpers.rails_blob_url(image.variant(resize_to_limit: [800,800]))
      else
        nil
      end
    end
  end
end

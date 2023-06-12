class Api::V1::ProductsController < Api::ApplicationController
  include ApiV1Concern

  respond_to :json

  def index
    products = Product.all
    render json: products.as_json(except: %i[created_at updated_at], methods: [:image_url, :rating, :final_price]), status: :ok
  rescue StandardError => e
    puts e.message
    head :internal_server_error
  end
end

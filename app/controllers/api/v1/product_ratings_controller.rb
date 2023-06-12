class Api::V1::ProductRatingsController < Api::ApplicationController
  include ApiV1Concern

  respond_to :json

  def create
    product_rating = current_user.product_ratings.build(product_id: params[:product_id], average: params[:rating])
    if product_rating.save!
      render json: product_rating.product.as_json(except: %i[created_at updated_at], methods: [:image_url, :rating]), status: :ok
    else
      puts product_rating.errors.full_messages
      head :internal_server_error
    end
  end
end

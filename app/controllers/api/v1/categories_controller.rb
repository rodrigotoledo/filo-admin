class Api::V1::CategoriesController < Api::ApplicationController
  include ApiV1Concern

  respond_to :json

  def index
    categories = Category.all
    render json: categories.as_json(except: %i[created_at updated_at], methods: [:image_url]), status: :ok
  rescue StandardError => e
    puts e.message
    head :internal_server_error
  end
end

class Api::V1::CategoriesController < Api::ApplicationController
  include ApiV1Concern

  respond_to :json

  def index
    categories = Category.all
    render json: categories, except: %i[created_at updated_at], status: :ok
  rescue StandardError
    head :internal_server_error
  end
end

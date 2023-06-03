class Api::V1::QuestionsController < Api::ApplicationController
  include ApiV1Concern

  respond_to :json

  def index
    questions = Question.all
    render json: questions.as_json(except: %i[created_at updated_at]), status: :ok
  rescue StandardError => e
    puts e.message
    head :internal_server_error
  end
end

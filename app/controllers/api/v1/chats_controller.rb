class Api::V1::ChatsController < Api::ApplicationController
  include ApiV1Concern

  respond_to :json

  def index
    chats = current_user.chats.includes(:chats)
    render json: chats.as_json(include: :chats, except: %i[created_at updated_at]), status: :ok
  rescue StandardError => e
    puts e.message
    head :internal_server_error
  end

  def create
    chat = current_user.chats.build(message: params[:message])
    if chat.save!
      chats = current_user.chats.includes(:chats)
      render json: chats.as_json(include: :chats, except: %i[created_at updated_at]), status: :ok
    else
      puts chat.errors.full_messages
      head :internal_server_error
    end
  end
end

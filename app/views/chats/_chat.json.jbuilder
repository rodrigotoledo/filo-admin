json.extract! chat, :id, :user_id, :chat_id, :message, :created_at, :updated_at
json.url chat_url(chat, format: :json)

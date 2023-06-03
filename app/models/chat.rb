class Chat < ApplicationRecord
  default_scope { order(created_at: :desc) }
  belongs_to :user
  belongs_to :chat, optional: true
  has_many :chats, dependent: :destroy
  validates :message, presence: true
end

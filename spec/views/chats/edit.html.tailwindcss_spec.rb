require 'rails_helper'

RSpec.describe "chats/edit", type: :view do
  let(:chat) {
    Chat.create!(
      user: nil,
      chat: nil,
      message: "MyString"
    )
  }

  before(:each) do
    assign(:chat, chat)
  end

  it "renders the edit chat form" do
    render

    assert_select "form[action=?][method=?]", chat_path(chat), "post" do

      assert_select "input[name=?]", "chat[user_id]"

      assert_select "input[name=?]", "chat[chat_id]"

      assert_select "input[name=?]", "chat[message]"
    end
  end
end

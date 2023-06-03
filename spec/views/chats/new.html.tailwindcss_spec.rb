require 'rails_helper'

RSpec.describe "chats/new", type: :view do
  before(:each) do
    assign(:chat, Chat.new(
      user: nil,
      chat: nil,
      message: "MyString"
    ))
  end

  it "renders new chat form" do
    render

    assert_select "form[action=?][method=?]", chats_path, "post" do

      assert_select "input[name=?]", "chat[user_id]"

      assert_select "input[name=?]", "chat[chat_id]"

      assert_select "input[name=?]", "chat[message]"
    end
  end
end

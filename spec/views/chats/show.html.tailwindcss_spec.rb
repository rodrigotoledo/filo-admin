require 'rails_helper'

RSpec.describe "chats/show", type: :view do
  before(:each) do
    assign(:chat, Chat.create!(
      user: nil,
      chat: nil,
      message: "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Message/)
  end
end

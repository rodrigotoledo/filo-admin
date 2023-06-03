require 'rails_helper'

RSpec.describe "chats/index", type: :view do
  before(:each) do
    assign(:chats, [
      Chat.create!(
        user: nil,
        chat: nil,
        message: "Message"
      ),
      Chat.create!(
        user: nil,
        chat: nil,
        message: "Message"
      )
    ])
  end

  it "renders a list of chats" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Message".to_s), count: 2
  end
end

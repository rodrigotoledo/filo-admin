require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      name: "MyString",
      slug: "MyString",
      price: 1.5,
      discount: 1.5,
      description: "MyText",
      featured: false,
      enable: false
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[slug]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[discount]"

      assert_select "textarea[name=?]", "product[description]"

      assert_select "input[name=?]", "product[featured]"

      assert_select "input[name=?]", "product[enable]"
    end
  end
end

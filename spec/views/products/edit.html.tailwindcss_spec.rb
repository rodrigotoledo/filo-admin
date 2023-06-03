require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  let(:product) {
    Product.create!(
      name: "MyString",
      slug: "MyString",
      price: 1.5,
      discount: 1.5,
      description: "MyText",
      featured: false,
      enable: false
    )
  }

  before(:each) do
    assign(:product, product)
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(product), "post" do

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

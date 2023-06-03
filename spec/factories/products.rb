FactoryBot.define do
  factory :product do
    name { "MyString" }
    slug { "MyString" }
    price { 1.5 }
    discount { 1.5 }
    description { "MyText" }
    featured { false }
    enable { false }
  end
end

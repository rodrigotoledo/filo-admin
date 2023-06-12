FactoryBot.define do
  factory :product_rating do
    product { nil }
    user { nil }
    rating { 1.5 }
  end
end

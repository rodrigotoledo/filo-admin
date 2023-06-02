# encoding: UTF-8
User.create(email: 'admin@test.com', password: ENV['DEFAULT_PASSWORD'], password_confirmation: ENV['DEFAULT_PASSWORD'])
User.create(email: 'faker@test.com', password: ENV['DEFAULT_PASSWORD'], password_confirmation: ENV['DEFAULT_PASSWORD'])
User.create(email: 'test@test.com', password: ENV['DEFAULT_PASSWORD'], password_confirmation: ENV['DEFAULT_PASSWORD'])
3.times do
  User.create(email: Faker::Internet.email, password: ENV['DEFAULT_PASSWORD'], password_confirmation: ENV['DEFAULT_PASSWORD'])
end

['Moda Íntima', 'Moda Praia', 'Fitness', 'Pijamas', 'Outlet'].map do |name|
  Category.create(name: name)
end
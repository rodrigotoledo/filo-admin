User.create(email: 'admin@test.com', password: ENV['DEFAULT_PASSWORD'], password_confirmation: ENV['DEFAULT_PASSWORD'])
User.create(email: 'faker@test.com', password: ENV['DEFAULT_PASSWORD'], password_confirmation: ENV['DEFAULT_PASSWORD'])
3.times do
  User.create(email: Faker::Internet.email, password: ENV['DEFAULT_PASSWORD'], password_confirmation: ENV['DEFAULT_PASSWORD'])
end
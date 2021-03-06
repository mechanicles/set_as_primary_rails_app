# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(name: 'Jane Smith')

3.times do
  EmailAddress.create!(
    email: Faker::Internet.email,
    primary: false,
    user: user
  )

  Address.create!(
    data: Faker::Address.full_address,
    default: false,
    owner: user
  )

  Post.create!(
    title: Faker::Book.title,
    content: Faker::Lorem.sentence
  )
end

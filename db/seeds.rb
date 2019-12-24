# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(name: 'John Smith')

EmailAddress.create!(
  email: 'john1@example.com',
  primary: false,
  user: user
)

EmailAddress.create!(
  email: 'john_real@example.com',
  primary: true,
  user: user
)

Address.create!(
  data: 'Pune, India',
  default: true,
  owner: user
)

Address.create!(
  data: 'Mumbai, India',
  default: false,
  owner: user
)

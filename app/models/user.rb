class User < ApplicationRecord
  has_many :email_addresses
  has_many :addresses, as: :owner
end

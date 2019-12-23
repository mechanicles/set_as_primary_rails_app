# frozen_string_literal: true

class User < ApplicationRecord
  has_many :email_addresses
  has_many :addresses, as: :owner

  accepts_nested_attributes_for :email_addresses, :addresses
end

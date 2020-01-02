# frozen_string_literal: true

class Address < ApplicationRecord
  include SetAsPrimary

  belongs_to :owner, polymorphic: true
  default_scope -> { order('created_at ASC') }

  set_as_primary :default, owner_key: :owner
end

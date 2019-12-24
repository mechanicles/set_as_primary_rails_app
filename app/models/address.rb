# frozen_string_literal: true

class Address < ApplicationRecord
  include SetAsPrimary

  belongs_to :owner, polymorphic: true

  set_as_primary :default, owner_key: :owner
end

# frozen_string_literal: true

class EmailAddress < ApplicationRecord
  include SetAsPrimary

  belongs_to :user
  default_scope -> { order('created_at ASC') }

  set_as_primary owner_key: :user
end

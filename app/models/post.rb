# frozen_string_literal: true

class Post < ApplicationRecord
  include SetAsPrimary

  default_scope -> { order('created_at ASC') }

  set_as_primary :primary
end

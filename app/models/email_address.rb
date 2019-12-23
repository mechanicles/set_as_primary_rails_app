# frozen_string_literal: true

class EmailAddress < ApplicationRecord
  belongs_to :user
end

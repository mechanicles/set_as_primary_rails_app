# frozen_string_literal: true

module ApplicationHelper
  def active(resource)
    controller_name == resource ? 'active' : ''
  end
end

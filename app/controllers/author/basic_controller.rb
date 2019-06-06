# frozen_string_literal: true

module Author
  class BasicController < ActionController::Base
    protect_from_forgery with: :exception
    layout "admin"
  end
end

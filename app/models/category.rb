# frozen_string_literal: true

class Category < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }, uniqueness: true
end

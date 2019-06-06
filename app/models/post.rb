# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: true
  validates :header, presence: true
  validates :content_new, presence: true
end

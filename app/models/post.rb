# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :category
  validates :title, presence: true
  validates :header, presence: true
  validates :content_new, presence: true
  validates :category_id, presence: true
end

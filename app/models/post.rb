# frozen_string_literal: true

class Post < ApplicationRecord
  acts_as_taggable

  belongs_to :category

  has_many :comments
  has_many :reactions, as: :reactionable

  validates :title, presence: true
  validates :header, presence: true
  validates :content_new, presence: true
  validates :category_id, presence: true

  
  mount_uploader :image, ImageUploader
end

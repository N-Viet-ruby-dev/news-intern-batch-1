# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  has_many :reactions, as: :reactionable

  validates :content, presence: true
end

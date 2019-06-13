# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def index
    @recent_posts = Post.all.last(8)
    @categories = Category.all.includes(:posts).limit(5)
  end
end

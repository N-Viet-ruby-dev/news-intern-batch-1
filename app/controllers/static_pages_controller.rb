# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def index
    @recent_posts = Post.all.last(8)
    @categories_index = Category.all.includes(:posts).limit(4)
    @tags = Tag.all.last(5)
  end
end

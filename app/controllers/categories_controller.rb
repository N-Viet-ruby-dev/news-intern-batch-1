# frozen_string_literal: true

class CategoriesController < ApplicationController
  def show
    @category = Category.find params[:id]
    @posts = @category.posts.where(active: true).order(created_at: :desc)
    @tags = Tag.all.last(5)
    @most_read_1 = Post.find(most_in_week[0][0])
    @most_read_2 = Post.find(most_in_week[1][0])
    @most_read_3 = Post.find(most_in_week[2][0])
    @featured_post_1 = Post.find(featured_posts[0][0])
    @featured_post_2 = Post.find(featured_posts[1][0])
  end
end

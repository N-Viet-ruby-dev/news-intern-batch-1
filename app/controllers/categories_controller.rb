# frozen_string_literal: true

class CategoriesController < ApplicationController
  respond_to :html, :js, only: [:show]

  def show
    @category = Category.find params[:id]
    @posts = @category.posts.where(active: true).order(created_at: :desc)
    @tags = Tag.all.last(5)
    @most_read_1 = Post.find(most_in_week[0][0])
    most_in_week[1].nil? ? (@most_read_2 = Post.last(4)[1]) : (@most_read_2 = Post.find(most_in_week[1][0]))
    most_in_week[2].nil? ? @most_read_3 = Post.last(4)[2] : @most_read_3 = Post.find(most_in_week[2][0])
    most_in_week[3].nil? ? @most_read_4 = Post.last(4)[3] : @most_read_4 = Post.find(most_in_week[3][0])
    featured_posts[0].nil? ? @featured_post_1 = Post.last(2)[0] : @featured_post_1 = Post.find(featured_posts[0][0])
    featured_posts[1].nil? ? @featured_post_2 = Post.last(2)[1] : @featured_post_2 = Post.find(featured_posts[1][0])
    @posts = @category.posts.page(params[:page]).per(6)
    respond_with @posts
  end
end

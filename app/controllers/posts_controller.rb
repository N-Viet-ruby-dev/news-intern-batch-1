# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :load_post, only: :show

  def index
    @posts = Post.all
    @q = Post.ransack(params[:q])
    @post_results = @q.result(distinct: true).page(params[:page]).per(9)
  end

  def show
    @comments = @post.comments.all
    @comment = @post.comments.build
  end

  private

  def load_post
    @post = Post.find params[:id]
  end
end

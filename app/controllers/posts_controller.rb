# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.all
    @q = Post.ransack(params[:q])
    @post_results = @q.result(distinct: true).page(params[:page]).per(9)
  end

  def show
    @post = Post.find(params[:id])
  end
end

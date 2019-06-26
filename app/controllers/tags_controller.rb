# frozen_string_literal: true

class TagsController < ApplicationController
  def show
    @posts = Post.where(active: true).tagged_with(params[:id])
  end
end

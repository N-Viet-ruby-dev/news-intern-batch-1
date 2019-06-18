# frozen_string_literal: true

class CategoriesController < ApplicationController
  def show
    @category = Category.find params[:id]
    @posts = @category.posts.order(created_at: :desc)
  end
end

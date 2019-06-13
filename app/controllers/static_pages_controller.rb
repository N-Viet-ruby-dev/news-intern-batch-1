# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def index
    @recent_posts = Post.all.last(8)
  end
end

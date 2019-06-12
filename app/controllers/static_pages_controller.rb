# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def index
    @recent_posts = Post.all.last(6)
  end
end

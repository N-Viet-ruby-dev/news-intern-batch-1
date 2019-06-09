# frozen_string_literal: true

module Admin
  class PostsController < Admin::BaseController
    before_action :load_post, except: :index

    def index
      @posts = Post.all
    end

    def show; end

    def update
      post_update(@post)
      @post.save!
      flash.now[:success] = "Publish successfully!"
      render "index"
    end

    private

    def admin_post_params
      params.require(:post).permit :content, :active, :public
    end

    def load_post
      @post = Post.find params[:id]
    end

    def post_update(post)
      post.content = post.content_new
      post.active = true
      post.public = true
    end
  end
end

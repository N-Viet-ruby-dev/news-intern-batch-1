# frozen_string_literal: true

module Admin
  class PostsController < Admin::BaseController
    before_action :load_post, except: :index

    def index
      @posts = Post.all
    end

    def show; end

    def edit; end

    def update; end

    private

    def post_params
      params.require(:post).permit :content, :active, :public
    end

    def load_post
      @post = Post.find params[:id]
    end
  end
end

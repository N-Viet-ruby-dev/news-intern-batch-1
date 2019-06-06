# frozen_string_literal: true

module Author
  class PostsController < Author::BasicController
    before_action :load_post, only: %i[edit update]

    def index
      @posts = Post.all
    end

    def new
      @post = Post.new
    end

    def create
      @post = Post.new post_params
      if @post.save
        redirect_to author_posts_path
      else
        render :new
      end
    end

    def edit; end

    def update
      if @post.update_attributes post_params
        redirect_to author_posts_path
      else
        render :edit
      end
    end

    private

    def post_params
      params.require(:post).permit :user_id, :title, :header, :content_new,
                                   :public, :category_id
    end

    def load_post
      @post = Post.find params[:id]
    end
  end
end

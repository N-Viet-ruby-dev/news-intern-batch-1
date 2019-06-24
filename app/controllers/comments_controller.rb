# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :load_post, except: :destroy
  before_action :user_comment, only: :destroy

  def create
    @comment = @post.comments.build comment_params
    @comment.save
    @comments = @post.comments
    respond_to do |format|
      format.html { redirect_to post_path(@post) }
      format.js
    end
  end

  def destroy
    @post = @comment.post
    @comment.destroy
    @comments = @post.comments
    respond_to do |format|
      format.html { redirect_to request.referrer }
      format.js
    end
  end

  private

  def comment_params
    params.require(:comment).permit :content, :user_id, :post_id
  end

  def load_post
    @post = Post.find_by id: params[:comment][:post_id]
  end

  def user_comment
    @comment = Comment.find(params[:id])
  end
end

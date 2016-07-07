class CommentsController < ApplicationController
  def create
    binding.pry 
    Comment.create(comment_params)
    redirect_to posts_path

  end

private
  def comment_params
    params.require(:comment).permit(:comment=>[:post_id, :author_id, :content], :reply=>[:parent_id, :author_id, :content, :post_id])
  end

end

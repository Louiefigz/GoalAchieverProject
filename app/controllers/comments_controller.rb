class CommentsController < ApplicationController
  def create
  
    Comment.create(comment_params)
    redirect_to posts_path
  end

  def show

    @comment = Comment.find(params[:id])
    respond_to do |f|
      f.html { render :show }
      f.json { render json: @comment}
    end

  end

private
  def comment_params
    params.require(:comment).permit(:comment=>[:post_id, :author_id, :content], :reply=>[:parent_id, :author_id, :content, :post_id])
  end

end

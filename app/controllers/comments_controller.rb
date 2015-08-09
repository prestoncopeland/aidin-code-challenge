class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.provider_id = params[:provider_id]
    @comment.save
    redirect_to provider_path(@comment.provider)
  end

  private

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end

end

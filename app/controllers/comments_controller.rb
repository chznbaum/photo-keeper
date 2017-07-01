class CommentsController < ApplicationController
  before_action :find_commentable
  def new
    @comment = Comment.new
  end

  def create
    @comment = @commentable.comments.new comment_params

    respond_to do |format|
      if @comment.save
        format.html { redirect_to updates_path, notice: "Your like was successful." }
      else
        format.html { redirect_to updates_path, notice: "Your like was unsucessful." }
      end
    end
  end
    
  private
  def comment_params
    params.require(:comment).permit(:content, :member_id, :site_id)
  end

  def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Update.find_by_id(params[:update_id]) if params[:update_id]
  end
end
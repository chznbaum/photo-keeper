class CommentsController < ApplicationController
  before_action :find_commentable
  def new
    @comment = Comment.new
  end

  def create
    @comment = @commentable.comments.new comment_params

    if @comment.save
      redirect_to :back, notice: 'Your comment was successfully posted.'
    else
      redirect_to :back, notice: 'Your comment wasn\'t posted.'
    end
    
    private
    def comment_params
      params.require(:comment).permit(:content, :user_id, :site_id)
    end

    def find_commentable
      @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
      @commentable = Update.find_by_id(params[:update_id]) if params[:update_id]
    end
end
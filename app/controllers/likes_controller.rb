class LikesController < ApplicationController

    before_action :find_likeable

    def new
        @like = Like.new
    end

    def create
        @like = @likeable.likes.new like_params
        respond_to do |format|
          if @like.save
              format.html { redirect_to updates_path, notice: "Your like was successful." }
          else
              format.html { redirect_to updates_path, notice: "Your like was unsucessful." }
          end
        end
    end

    private
    def like_params
        params.require(:like).permit(:member_id, :update_id, :comment_id)
    end

    def find_likeable
        @likeable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
        @likeable = Update.find_by_id(params[:update_id]) if params[:update_id]
    end
end
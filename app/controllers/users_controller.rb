class UsersController < ApplicationController
  before_action :set_user, only: [:show]
    
  layout 'update'

  def index
    @users = User.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.includes(:sites).find(params[:id])
  end

  def find_sites
  end
end
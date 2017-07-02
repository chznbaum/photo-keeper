class UsersController < ApplicationController
  before_action :set_user, only: [:show]
    
  layout 'album'

  def index
    @users = User.all
    @page_title = 'Users'
    @page_description = 'All the users of the over-arching website.'
  end

  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.includes(:sites).find(params[:id])
    @page_title = @user.email
    @page_description = 'One of the users able to create a sub-domain.'
  end

  def find_sites
  end
end
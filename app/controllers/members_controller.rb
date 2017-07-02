class MembersController < ApplicationController
  before_action :set_member, only: [:show]
    
  layout 'update'

  def index
    @members = Member.all
  end

  def show
  end

  private
  
  def set_member
    @member = Member.find(params[:id])
  end
end
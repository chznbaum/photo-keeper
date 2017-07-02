class MembersController < ApplicationController
  before_action :set_member, only: [:show]
    
  layout 'update'

  def index
    @members = Member.all
  end

  def show
    @comments = Comment.where(:comments => { :member_id => @member.id })
  end

  private
  
  def set_member
    @member = Member.find(params[:id])
  end
end
class KidsController < ApplicationController
  before_action :set_kid, only: [:show]
    
  layout 'update'

  def index
    @kids = Kid.all
  end

  def show
  end

  private
  
  def set_kid
    @kid = Kid.find(params[:id])
  end
end
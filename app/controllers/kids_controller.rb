class KidsController < ApplicationController
  before_action :set_kid, only: [:show]
    
  layout 'album'

  def index
    @kids = Kid.all
    @page_title = 'Kids'
    @page_description = 'All the kids under this site.'
  end

  def show
    @page_title = @kid.name
    @page_description = "The updates involving #{@kid.name}."
  end

  private
  
  def set_kid
    @kid = Kid.includes(:updates).find(params[:id])
  end
end
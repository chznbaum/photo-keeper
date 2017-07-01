class UpdatesController < ApplicationController
  layout 'update'
  def index
    @updates = Update.all
  end

  def show
    @update = Update.find(params[:id])
  end
end
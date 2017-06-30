class UpdatesController < ApplicationController
  before_action :find_kid
  def index
    @updates = Update.all
  end

  def show
    @update = Update.find(params[:id])
  end

  private

  def find_kid
    @kid = Kid.find_by_id(params[:kid_id])
  end
end
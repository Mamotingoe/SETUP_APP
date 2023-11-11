class SpacesController < ApplicationController

  def index
    @spaces = Space.all
  end

  def show
    @spaces = Space.find(params[:id])
  end

  def new

  end
end

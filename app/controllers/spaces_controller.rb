class SpacesController < ApplicationController

  def index
    @spaces = Space.all
  end

  def show
    @spaces = Space.find(params[:id])
  end

  def new
    @spaces = Space.new
  end

  def create
    @space = Space.new(params[:space])
    @space.save
    redirect_to space_path(@space)
  end
  private

  def space_params
    params.require(:space).permit(:name, :location, :size, :amenties, :description, :price)
  end
end

class SpacesController < ApplicationController

  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to space_path(@space)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def space_params
    params.require(:space).permit(:name, :location, :size, :amenties, :description, :price)
  end
end

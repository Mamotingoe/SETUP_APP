class BookingsController < ApplicationController

  def new
    # We need @restaurant in our `simple_form_for`
    @space = Space.find(params[:space_id])
    @booking = Booking.new
  end

  def create
    @space = Space.find(params[:space_id])
    @booking = Booking.new(booking_params)
    @booking.space = @space
    @booking.user = current_user
    if @booking.save

      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @space = @booking.space
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :duration)
  end

end

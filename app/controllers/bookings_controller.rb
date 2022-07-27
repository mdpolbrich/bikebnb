class BookingsController < ApplicationController
  # # # before_action :set_bike, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bike_id = 3
    # @booking.bike = current_bike
    @booking.save!

    # redirect_to bookings_path(@booking)
  end

  def edit
  end

  def show
  end

  # def update
  #   @bike.update(bike_params)
  #   # the update action already saves the changes

  #   redirect_to bike_path(@bike)
  # end

  # def destroy
  #   @bike.destroy
  #   redirect_to bikes_path
  # end

  private

  def booking_params
    params.require(:booking).permit(:start, :end, :user, :bike)
  end

  # def set_bike
  #  @bike = Bike.find(params[:id])
  # end
end

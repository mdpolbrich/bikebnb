class BookingsController < ApplicationController
  before_action :set_bike, only: [:new, :create]

  def index
    # @bookings = Booking.all
    @bookings = Booking.where(user_id: current_user)
    @my_bookings = []
    @my_bikes = Bike.where(user_id: current_user).each do |my_bike|
      @my_bookings << my_bike.bookings
    end
    @my_bookings
  end

  def accept
    @my_booking.confirmation = true
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bike = Bike.find(params[:bike_id])
    # @booking.bike = current_bike
    @booking.save!

    redirect_to bike_path(@bike), notice: "Your booking has been created"
  end

  private

  def booking_params
    params.require(:booking).permit(:start, :end, :user, :bike_id)
  end

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end
end

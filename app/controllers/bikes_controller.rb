class BikesController < ApplicationController
  # before_action :set_bike, only: [:show, :edit, :show, :update, :destroy]
#  has_one_attached :image

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user_id = current_user.id
    @bike.save!

    redirect_to root_path
  end

  def edit
  end

  def show
    @bike = Bike.all
  end

  def update
    @bike.update(bike_params)
    @bike.save

   # redirect_to bikes_show
   # if @bike.save
    #  redirect_to bikes_path(@bike)
   # else
   #   render :new
  #  end
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path
  end

  private

  def bike_params
    params.require(:bike).permit(:user_id, :name, :model, :description, :location, :year, :price)
  end

  def set_bike
   @bike = Bike.find(params[:bike_id])
  end
end

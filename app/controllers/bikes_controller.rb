class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :show, :update, :destroy]


  def index
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.save

    redirect_to bike_path(@bike)
  end

  def edit
  end

  def show
  end

  def update
    @bike.update(bike_params)
    @bike.save

    redirect_to bikes_path(@bike)
    if @bike.save
      redirect_to bikes_path(@bike)
    else
      render :new
    end
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :model, :image, :description, :location, :year, :price)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end

class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
    @car.variants.build
  end

  def show
    @car = Car.find(params[:id])
  end

  def create
    @car = Car.build(car_params)
    if @car.save
      redirect_to root_path
      flash[:success] = "Car successfully added."
    else 
      render :new
      flash[:error] = "There was an issue adding the car" 
    end
  end

  def update
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def destroy
    @car = Car.find(params[:id])
  end


  private

  def car_params
    params.permit(:car).require(:make, :model, :year)
  end
end

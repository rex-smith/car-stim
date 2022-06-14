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
    @car = Car.new(car_params)
    if @car.save
      flash[:success] = "Car successfully added."
      redirect_to root_path
    else 
      flash[:error] = "There was an issue adding the car"
      render :new
    end
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      flash[:success] = "Car successfully added."
      redirect_to root_path
    else 
      flash[:error] = "There was an issue updating the car"
      render :new
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def destroy
    @car = Car.find(params[:id])
    if @car.destroy
      flash[:success] = "Car successfully destroyed."
      redirect_to root_path
    else 
      flash[:error] = "Something went wrong."
      redirect_to root_path
    end
  end


  private

  def car_params
    params.require(:car).permit(:make, :model, :year, variants_attributes: [:name, :cost])
  end
end

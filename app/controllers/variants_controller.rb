class VariantsController < ApplicationController
  def index

  end

  def show

  end

  def new

  end

  def create
    
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def variant_params
    params.require(:variant).permit(:name, :cost, :car_id)
  end


end

# app/controllers/motorcycles_controller.rb
class MotorcyclesController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create, :edit, :update, :destroy ]

  def index
    @motorcycles = Motorcycle.all
  end

  def new
    @motorcycle = Motorcycle.new
  end

  def create
    @motorcycle = current_user.motorcycles.build(motorcycle_params)
    if @motorcycle.save
      redirect_to motorcycles_path, notice: "Motorcycle was successfully listed."
    else
      render :new
    end
  end

  def edit
    @motorcycle = Motorcycle.find(params[:id])
  end

  def update
    @motorcycle = Motorcycle.find(params[:id])
    if @motorcycle.update(motorcycle_params)
      redirect_to motorcycles_path, notice: "Motorcycle was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @motorcycle = Motorcycle.find(params[:id])
    @motorcycle.destroy
    redirect_to motorcycles_path, notice: "Motorcycle was successfully deleted."
  end

  private

  def motorcycle_params
    params.require(:motorcycle).permit(:name, :category)
  end
end

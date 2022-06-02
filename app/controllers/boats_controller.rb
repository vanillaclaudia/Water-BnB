class BoatsController < ApplicationController
  before_action :find_by_id, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def new
    @boat = Boat.new
  end

  def index
    @boats = Boat.all
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user_id = current_user.id
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  def update
    @boat.update(boat_params)
    redirect_to boat_path(@boat)
  end

  def show
    @boat = Boat.find(params[:id])
    @reservation = Reservation.new
  end

  def destroy
    # @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to boats_path, status: :see_other
  end

  private

  def find_by_id
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:boat_type, :location, :total_occupancy, :price, :photo)
  end
end

  #Below should all go into HTML file in view
  #Methoden aus dem Schema

  #def boat_type
  #end

  #def owner_id
    #Anders als nur user Eingabe
  #end

  #def location
  #end

  #def total_occupancy
  #end

  #def price
  #end

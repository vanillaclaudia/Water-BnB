class BoatsController < ApplicationController

  #Methoden außerhalb des Schemas
  def new
    @boat = Boat.new
  end

  def index
    @boat = Boat.all
  end

  def create
    boat = Boat.new(boat_params)
    boat.save
    redirect_to boat_path
  end

  def update
    @boat.update(boat_params)
    redirect_to boat_path(@boat)
  end

  def destroy
    @boat.destroy
    redirect_to boat_path
  end

  def find_by_id
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:boat_type, :owner_id, :location, :total_occcupancy, :price)
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

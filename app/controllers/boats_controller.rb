class BoatsController < ApplicationController

# before_action :find_by_id, only: %i[show edit update destroy]
# skip_before_action :authenticate_user!, only: %i[index show]

  def new
    @boat = Boat.new
  end

  def index
    @boat = Boat.all
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
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

  def destroy
    @boat.destroy
    redirect_to boat_path
  end

  def find_by_id
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:boat_type, :location, :total_occupancy, :price)
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

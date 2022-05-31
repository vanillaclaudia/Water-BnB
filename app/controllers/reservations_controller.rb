class ReservationsController < ApplicationController

  def index
    @reservations = Reservations.all
  end

  def show
    @reservation
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.boat = Boat.find(params[:boat_id])
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      redirect_to boat_path(@boat)
    end
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end

  def reservation_params
    params[:reservation].permit(:total_price, :start_date, :end_date)
  end
end

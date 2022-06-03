require 'date'

class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.find(params[:boat_id])
    @reservation = Reservation.new
  end

  def create
    @boat = Boat.find(params[:boat_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.boat = @boat
    @reservation.user = current_user
    if @reservation.save
      redirect_to reservation_path(@reservation), notice: 'Reservation was successfully created.'
    else
      render 'boats/show', status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @Reservation = Reservation.find(params[:id])
  end

  def my_reservations
    @my_reservations = Reservation.where(user: current_user)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

end

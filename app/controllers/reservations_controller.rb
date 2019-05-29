class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservation_path
    else
      render :new
    end
  end

  def new
    @reservation = Reservation.new
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def my_reservation
    current_user.reservation
  end

  private

  def reservation_params
    params.require(:reservation).permit(:arrival_date, :departure_date, :guest_number, :total_price, :status)
  end
end

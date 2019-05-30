class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:accept, :decline]

  def index
    @reservations = current_user.reservations
  end

  def create
    @accommodation = Accommodation.find(params[:accommodation_id])
    @reservation = current_user.reservations.build(reservation_params)
    @reservation = Reservation.new(reservation_params)
    @reservation.accommodation = @accommodation
    @reservation.total_price = (@reservation.departure_date - @reservation.arrival_date) * @accommodation.price_per_night
    @reservation.user = current_user
    @reservation.status = "pending"
    if @reservation.save
      redirect_to reservations_path
    else
      raise
      render :new
    end
  end

  def new
    @accommodation = Accommodation.find(params[:accommodation_id])
    @reservation = Reservation.new
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def my_reservation
    @reservations = current_user.owner_reservations
  end

  def accept
    @reservation.status = "accepted"
    @reservation.save
    redirect_to my_reservation_reservations_path
  end

  def decline
    @reservation.status = "rejected"
    @reservation.save
    redirect_to my_reservation_reservations_path
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:arrival_date, :departure_date, :guest_number, :accommodation_id)
  end
end

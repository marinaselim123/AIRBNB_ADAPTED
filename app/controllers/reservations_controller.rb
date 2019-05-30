class ReservationsController < ApplicationController
 # before_action :set_booking, only: [:mark_as_accepted, :mark_as_rejected]
  def index
    @reservations = current_user.reservations
  end

  def create
    @accommodation = Accommodation.find(params[:accommodation_id].to_i)
    @reservation = Reservation.new
    @reservation.accommodation = @accommodation
    @reservation.user = current_user

  #  @reservation.status = "pending"
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
    current_user.reservation
  end

#  def mark_as_accepted
#    @reservation.status = "accepted"
#    @reservation.save
#  end

#  def mark_as_rejected
#    @reservation.status = "rejected"
#    @reservation.save
#  end

  private

  def reservation_params
    params.require(:reservation).permit(:arrival_date, :departure_date, :guest_number, :accommodation_id)
  end
end

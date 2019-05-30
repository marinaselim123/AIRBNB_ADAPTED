class ReservationsController < ApplicationController
 # before_action :set_booking, only: [:mark_as_accepted, :mark_as_rejected]
  def index
    @reservations = Reservation.all
  end

    def create
      @accommodation = Accommodation.find(params[:accommodation_id])
       @reservation = current_user.reservations.build(reservation_params)
       # @reservation = Reservation.new(reservation_params)
       @reservation.accommodation = @accommodation

       @reservation.total_price = (@reservation.departure_date - @reservation.arrival_date) * @accommodation.price_per_night
       # @reservation.user = current_user
       # @reservation.status = "pending"
       if @reservation.save
         redirect_to root_path
       else
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

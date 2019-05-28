class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def create
  end

  def new
  end

  def show
  end

  def my_reservation
  end
end

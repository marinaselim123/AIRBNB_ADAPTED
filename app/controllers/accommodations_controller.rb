class AccommodationsController < ApplicationController
  def index
    @accomodations = Accomodation.all
  end

  def create
    @accomodation = Accomodation.new(accomodation_params)

    if @accomodation.save
      redirect_to accomodation_path
    else
      render :new
    end
  end

  def new
    @accomodation = Accomodation.new
  end

  def show
    @accomodation = Accomodation.find(params[:id])
  end

  def my_reservation
    @accomodation
  end

  def accepted
  end

  def declined
  end

  private

  def accomodation_params
    params.require(:accomodation).permit(:type, :guest_number, :rooms_number, :beds_number, :toilet_number, :address, :price_per_night, :image)

  end
end

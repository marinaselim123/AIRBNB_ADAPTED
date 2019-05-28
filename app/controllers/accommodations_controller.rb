class AccommodationsController < ApplicationController
  def index
    @accommodations = Accommodation.all
  end

  def create
    @accommodation = Accommodation.new(accommodation_params)
    if @accommodation.save
      redirect_to accommodation_path
    else
      render :new
    end
  end

  def new
    @accommodation = Accommodation.new
  end

  def show
    @accommodation = Accommodation.find(params[:id])
  end

  def my_accommodation
  end

  def accepted
  end

  def declined
  end

  private

  def accommodation_params
    params.require(:accommodation).permit(:type, :guest_number, :rooms_number, :beds_number, :toilet_number, :address, :price_per_night, :image)
  end
end

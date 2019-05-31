class AccommodationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index

    if params[:address].present?
      @accommodations = Accommodation.near(params[:address])

      if params[:guest_number].present?
        @accommodations = @accommodations.where(guest_number: params[:guest_number])
      end
    else
      @accommodations = Accommodation.where.not(latitude: nil, longitude: nil)
    end

    @markers = @accommodations.map do |accommodation|
      {
        lat: accommodation.latitude,
        lng: accommodation.longitude
      }
    end
  end

  def create
    @accommodation = current_user.accommodations.build(accommodation_params)

    if @accommodation.save
      redirect_to my_accommodations_accommodations_path
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

  def my_accommodations
    @accommodations = current_user.accommodations
  end

  def accepted
  end

  def declined
  end

  private


  def accommodation_params
    params.require(:accommodation).permit(:accommodation_type, :guest_number, :rooms_number, :beds_number, :toilet_number, :address, :price_per_night, :photo)
  end
end

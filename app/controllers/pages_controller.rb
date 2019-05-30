class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @home_accommodations = Accommodation.all.shuffle.first(3)
  end
end

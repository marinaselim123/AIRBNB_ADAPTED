class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :accommodation
  validates :arrival_date, :departure_date, presence: true
  # validates :departure_date_after_arrival_date
  validates :guest_number, :total_price, :status, presence: true
end

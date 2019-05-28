class Accommodation < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :users, through: :reservations
  validates :accommodation_type, :guest_number, :rooms_number, :beds_number, :toilet_number, :address, :price_per_night, presence: true
end

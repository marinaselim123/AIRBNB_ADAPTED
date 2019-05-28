class User < ApplicationRecord
  has_many :reservations
  has_many :accommodations
  has_many :owner_reservations, through: :accommodations, source: :reservations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

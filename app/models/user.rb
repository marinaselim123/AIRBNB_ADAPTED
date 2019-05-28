class User < ApplicationRecord
  has_many :reservations
  has_many :accommodations
  has_many :owner_reservations, through: :accommodations, source: :reservations
  # validates :first_name, :last_name, :address, :phone_number, :avatar, presence: true
  # validates :first_name, :last_name, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

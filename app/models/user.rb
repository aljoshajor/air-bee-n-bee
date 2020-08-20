class User < ApplicationRecord
  has_many :bees, dependent: :destroy
  has_many :bookings
  has_many :likes, dependent: :destroy
  validates :name, presence: true, uniqueness: true, length: { in: 5..20 }
  validates :email, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :bees
  validates :bee, presence: true
  validates :user, presence: true
end

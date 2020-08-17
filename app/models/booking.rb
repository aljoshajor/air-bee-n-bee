class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bee
  validates :bee, presence: true
  validates :user, presence: true
end

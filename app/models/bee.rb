class Bee < ApplicationRecord
  belongs_to :user
  FEATURES = ["Cool", "Funny", "Dramatic", "Interesting", "Funky", "Sexy", "Crazy"]
  validates :features, inclusion: { in: FEATURES }
  validates :features, presence: true
  has_many :bookings, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :name, presence: true, uniqueness: true, length: { in: 5..20 }
  validates :description, length: { in: 15..300 }
end

class Bee < ApplicationRecord
  belongs_to :user
  FEATURES = ["Cool", "Funny", "Dramatic", "Interesting", "Funky", "Sexy", "Crazy"]
  validates :features, presence: true, inclusion: { in: FEATURES }
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true, length: { in: 5..20 }
  validates :description, length: { in: 15..300 }
end

class Booking < ApplicationRecord
  belongs_to :user
  belong_to :apartment
  has_one :facturation
  validates :kind, :starts_at, :ends_at, presence: true
end
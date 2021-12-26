class Apartment < ApplicationRecord
  belongs_to :home
  has_one :presentation, as: :morph, dependent: :destroy

  validates :title, presence: true
end
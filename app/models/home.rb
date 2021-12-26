class Home < ApplicationRecord
  has_many :apartments
  has_one :presentation, as: :morph, dependent: :destroy

  validates :title, presence: true
end
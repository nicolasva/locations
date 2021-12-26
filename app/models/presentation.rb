class Presentation < ApplicationRecord
  belongs_to :presentation, polymorphic: true
  has_many :presentations

  validates :content, presence: true
end
class Facturation < ApplicationRecord
  belongs_to :booking

  validates :firstname, :lastname, :email, :phonenumber, :address, :town, :zipcode, :street_number, presence: true
end
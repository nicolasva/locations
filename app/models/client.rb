class Client < ApplicationRecord
  belongs_to :user

  validates :gender, :firstname, :lastname, :email, :phonenumber, presence: true
end
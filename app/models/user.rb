class User < ApplicationRecord
  validates :first_name,
    presence: true
  validates :last_name,
    presence: true
  validates :description,
    presence: true,
    length: { in: 1..140 }
  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
  validates :city_id,
    presence: true
  validates :age,
    presence: true
  belongs_to :city
  has_many :gossips

  def full_name
    first_name + " " + last_name
  end
end

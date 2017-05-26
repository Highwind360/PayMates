class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable, :timeoutable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :firstname, :lastname, :username, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :phone_number, format: { with: /\A\+1\(\d{3}\)\d{3}-\d{4}\z/,
    message: "must be a US number format."}
end

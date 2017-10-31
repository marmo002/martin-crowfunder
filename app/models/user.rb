class User < ActiveRecord::Base


  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 8 }, on: :create
  validates :password, confirmation: true, on: :create
  validates :password_confirmation, presence: true, on: :create
  has_secure_password

end

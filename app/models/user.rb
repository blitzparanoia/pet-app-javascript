class User < ApplicationRecord
  has_secure_password
  has_many :jobs
  has_many :pets, through: :jobs

  #validate email with presenece and uniquness true
end

class User < ApplicationRecord
  has_secure_password

  #validate email with presenece and uniquness true
end

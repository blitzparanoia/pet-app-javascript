class Pet < ApplicationRecord
  has_many :jobs
  has_many :users, through: :jobs
  # belongs_to :user

end

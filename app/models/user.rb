class User < ApplicationRecord
  has_secure_password
  has_many :jobs
  has_many :companies, through: :jobs
#reviews connect via the foreign_key
  has_many :reviews, foreign_key: "reviewer_id", class_name: "Review"
  has_many :reviewed_companies, through: :reviews, source: :company

  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true
end

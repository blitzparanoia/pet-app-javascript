class Company < ApplicationRecord
  has_many :jobs
  has_many :users, through: :jobs

  has_many :reviews
  has_many :reviewers, through: :reveiws, source: :reviewer

end

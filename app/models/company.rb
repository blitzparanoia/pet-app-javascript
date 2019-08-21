class Company < ApplicationRecord
  has_many :jobs
  has_many :users, through: :jobs

  has_many :reviews
  has_many :reviewers, through: :reviews, source: :reviewer

  validates :name, :age , :motto, presence: true
  validates_uniqueness_of  :name

end

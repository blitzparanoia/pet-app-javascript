class Job < ApplicationRecord
  belongs_to :user
  belongs_to :company

  validates :title, presence: true
  validates :position, presence: true
  validates :description, presence: true
  validates :company_id, presence: true
  validates_associated :company


  def company_attributes=(attributes)
    company = Company.find_or_create_by(attributes)
       self.company = company if company.valid? || !self.company
    end

end

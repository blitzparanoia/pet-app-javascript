class Job < ApplicationRecord
  belongs_to :user
  belongs_to :company

  def company_attributes=(attributes)
    company = Company.find_or_create_by(attributes)
       self.company = company if company.valid? || !self.company
    end
    
end

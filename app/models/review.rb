class Review < ApplicationRecord
  belongs_to :company
  belongs_to :reviewer, class_name: "User"

  def self.average_rating
     average(:rating)
   end
   
end

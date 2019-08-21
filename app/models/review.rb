class Review < ApplicationRecord
  belongs_to :company
  belongs_to :reviewer, class_name: "User"

end

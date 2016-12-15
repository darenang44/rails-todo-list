class Task < ApplicationRecord
  belongs_to :user

  # we created a method that will check if the completed_at attribute is blank
  def completed?
    # if its not blank then we know that it is completed
    !completed_at.blank?
  end
  
end

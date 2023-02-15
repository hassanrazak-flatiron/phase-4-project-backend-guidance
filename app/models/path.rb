class Path < ApplicationRecord
  belongs_to :user
  belongs_to :career


  # validations
  # user_id  presence true 
  # career_id presence true
  # career_id uniqueness: true - - implementation of scope. 

end

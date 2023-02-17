class Path < ApplicationRecord
  belongs_to :user
  belongs_to :career

  ##### validations #####
  
  ##### user_id #####  
  validates :user_id, presence:true
  
  ##### career_id presence true ######
  validates :career_id, presence:true

  #### career_id  ######
  # NEED TO REVISIT THIS, AND FIGURE OUT HOW TO 
  # ASSIGN ONLY ONE CAREER PATH PER USER_ID. NO DUPLICATE CAREER_IDs PER USER.
  # validates :career_id, uniqueness:true 


  
end

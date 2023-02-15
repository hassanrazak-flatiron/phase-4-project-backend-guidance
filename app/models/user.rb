class User < ApplicationRecord

##### Associations to other models##### 
has_many :paths
has_many :careers, through: :paths
    
##### validations ######## 
# password 
validates :password_digest, 
presence: true,
length: {in: 3..8}
        
### email ### 
validates :email, email:true
        
### first_name and a last_name ###
validates :first_name, presence: true 
validates :last_name, presence: true 

        
        
        
        



end

class User < ApplicationRecord

# encrypts user password during login and signup. 
has_secure_password    

##### Associations to other models##### 
has_many :paths
has_many :careers, through: :paths
    
##### validations ######## 
# password 
validates :password, 
presence: true,
length: {minimum: 3}
        
### email ### 
validates :email, email:true
        
### first_name and a last_name ###
validates :first_name, presence: true 
validates :last_name, presence: true 




        
        
        
        



end

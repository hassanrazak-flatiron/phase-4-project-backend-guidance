class Career < ApplicationRecord
has_many :paths
has_many :users, through: :paths

# no validations exist for careers as we are not adding careers to the database from
# a user input perspective. 

end

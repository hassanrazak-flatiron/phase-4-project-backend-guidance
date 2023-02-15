class Career < ApplicationRecord
has_many :paths
has_many :users, through: :paths
end

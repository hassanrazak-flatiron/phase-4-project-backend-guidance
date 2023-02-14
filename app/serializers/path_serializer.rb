class PathSerializer < ActiveModel::Serializer
  attributes :id, :priority, :loan_amt, :interest_rate, :loan_term
  has_one :user
  has_one :career
end

class CareerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :min_edu_req, :time_to_complete, :avg_cost_edu, :ave_salary, :salary_1, :salary_2, :salary_3, :salary_4, :salary_5
end

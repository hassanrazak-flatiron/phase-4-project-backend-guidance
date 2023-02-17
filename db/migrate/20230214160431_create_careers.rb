class CreateCareers < ActiveRecord::Migration[6.1]
  def change
    create_table :careers do |t|
      t.string :name
      t.string :description
      t.string :min_edu_req
      t.integer :time_to_complete
      t.integer :avg_cost_edu
      t.integer :ave_salary
      t.integer :salary_1
      t.integer :salary_2
      t.integer :salary_3
      t.integer :salary_4

      t.timestamps
    end
  end
end

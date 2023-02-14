class CreatePaths < ActiveRecord::Migration[7.0]
  def change
    create_table :paths do |t|
      t.integer :priority
      t.integer :loan_amt
      t.float :interest_rate
      t.integer :loan_term
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :career, null: false, foreign_key: true

      t.timestamps
    end
  end
end

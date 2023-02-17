# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_02_14_160612) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "careers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "min_edu_req"
    t.integer "time_to_complete"
    t.integer "avg_cost_edu"
    t.integer "ave_salary"
    t.integer "salary_1"
    t.integer "salary_2"
    t.integer "salary_3"
    t.integer "salary_4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "paths", force: :cascade do |t|
    t.integer "priority"
    t.integer "loan_amt"
    t.float "interest_rate"
    t.integer "loan_term"
    t.bigint "user_id", null: false
    t.bigint "career_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["career_id"], name: "index_paths_on_career_id"
    t.index ["user_id"], name: "index_paths_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "paths", "careers"
  add_foreign_key "paths", "users"
end

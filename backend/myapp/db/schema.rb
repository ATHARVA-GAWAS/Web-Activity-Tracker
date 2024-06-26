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

ActiveRecord::Schema[7.1].define(version: 2024_05_10_171258) do
  create_table "my_users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restricted_websites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_restricted_websites_on_user_id"
  end

  create_table "time_limits", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "website"
    t.integer "time_limit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_time_limits_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "website_visits", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "url"
    t.datetime "visit_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_website_visits_on_user_id"
  end

  add_foreign_key "restricted_websites", "users"
  add_foreign_key "time_limits", "users"
  add_foreign_key "website_visits", "users"
end

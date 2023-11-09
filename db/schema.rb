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

ActiveRecord::Schema[7.0].define(version: 2023_11_09_130600) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "biannual_services", force: :cascade do |t|
    t.string "name"
    t.string "biannual_span"
    t.integer "annual_total"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_biannual_services_on_user_id"
  end

  create_table "commissioneds", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_commissioneds_on_user_id"
  end

  create_table "monthly_services", force: :cascade do |t|
    t.string "name"
    t.string "month"
    t.integer "annual_total"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_monthly_services_on_user_id"
  end

  create_table "quarterly_services", force: :cascade do |t|
    t.string "name"
    t.string "quarterly"
    t.integer "annual_total"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_quarterly_services_on_user_id"
  end

  create_table "service_types", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "default_rate"
    t.string "frequency"
    t.string "target"
    t.bigint "user_id", null: false
    t.bigint "commissioned_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commissioned_id"], name: "index_service_types_on_commissioned_id"
    t.index ["user_id"], name: "index_service_types_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "jti", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "yearly_services", force: :cascade do |t|
    t.string "name"
    t.string "year"
    t.integer "annual_total"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_yearly_services_on_user_id"
  end

  add_foreign_key "biannual_services", "users"
  add_foreign_key "commissioneds", "users"
  add_foreign_key "monthly_services", "users"
  add_foreign_key "quarterly_services", "users"
  add_foreign_key "service_types", "commissioneds"
  add_foreign_key "service_types", "users"
  add_foreign_key "yearly_services", "users"
end

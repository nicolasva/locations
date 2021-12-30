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

ActiveRecord::Schema.define(version: 2021_12_30_143346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartments", force: :cascade do |t|
    t.string "title", null: false
    t.bigint "home_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["home_id"], name: "index_apartments_on_home_id"
  end

  create_table "clients", force: :cascade do |t|
    t.integer "gender", null: false
    t.string "firstname", limit: 30
    t.string "lastname", limit: 30
    t.string "email", limit: 50
    t.string "phonenumber", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "facturations", force: :cascade do |t|
    t.string "firstname", limit: 30, null: false
    t.string "lastname", limit: 30, null: false
    t.string "email", limit: 50, null: false
    t.string "phonenumber", null: false
    t.string "address", limit: 150
    t.string "town", limit: 50
    t.string "zipcode", limit: 10
    t.string "street_number"
    t.float "latitude"
    t.float "longitude"
    t.string "country_code"
    t.boolean "default", default: false, null: false
    t.bigint "user_id", null: false
    t.index ["email"], name: "index_facturations_on_email"
    t.index ["user_id"], name: "index_facturations_on_user_id"
  end

  create_table "homes", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "presentations", force: :cascade do |t|
    t.text "content"
    t.integer "morph_id", null: false
    t.string "morph_type", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: 6
    t.datetime "last_sign_in_at", precision: 6
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "apartments", "homes"
  add_foreign_key "clients", "users"
  add_foreign_key "facturations", "users"
end

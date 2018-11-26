# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_25_181438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attractions", force: :cascade do |t|
    t.string "name"
    t.string "localName"
    t.text "content"
    t.text "intro"
    t.bigint "region_id"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_attractions_on_city_id"
    t.index ["region_id"], name: "index_attractions_on_region_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "localName"
    t.text "intro"
    t.text "content"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_cities_on_region_id"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "post_id"
    t.text "content"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "dailies", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.integer "daynumber"
    t.datetime "dailydate"
    t.bigint "user_id"
    t.bigint "itinerary_id"
    t.bigint "region_id"
    t.bigint "city_id"
    t.bigint "attraction_id"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attraction_id"], name: "index_dailies_on_attraction_id"
    t.index ["city_id"], name: "index_dailies_on_city_id"
    t.index ["itinerary_id"], name: "index_dailies_on_itinerary_id"
    t.index ["post_id"], name: "index_dailies_on_post_id"
    t.index ["region_id"], name: "index_dailies_on_region_id"
    t.index ["user_id"], name: "index_dailies_on_user_id"
  end

  create_table "itineraries", force: :cascade do |t|
    t.string "name"
    t.integer "view"
    t.text "content"
    t.text "intro"
    t.datetime "startdate"
    t.datetime "enddate"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_itineraries_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "view"
    t.string "title"
    t.text "content"
    t.bigint "user_id"
    t.bigint "region_id"
    t.bigint "city_id"
    t.bigint "attraction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attraction_id"], name: "index_posts_on_attraction_id"
    t.index ["city_id"], name: "index_posts_on_city_id"
    t.index ["region_id"], name: "index_posts_on_region_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.string "localName"
    t.text "content"
    t.text "intro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "timezone", default: "UTC", null: false
    t.string "language", default: "en", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "superadmin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.string "nickname"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "attractions", "cities"
  add_foreign_key "attractions", "regions"
  add_foreign_key "cities", "regions"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "dailies", "attractions"
  add_foreign_key "dailies", "cities"
  add_foreign_key "dailies", "itineraries"
  add_foreign_key "dailies", "posts"
  add_foreign_key "dailies", "regions"
  add_foreign_key "dailies", "users"
  add_foreign_key "itineraries", "users"
  add_foreign_key "posts", "attractions"
  add_foreign_key "posts", "cities"
  add_foreign_key "posts", "regions"
  add_foreign_key "posts", "users"
end

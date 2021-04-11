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

ActiveRecord::Schema.define(version: 2021_04_10_232354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer "user_id_creator"
    t.integer "user_id_player"
    t.integer "points_creator"
    t.integer "points_player"
    t.integer "delta_rating_creator"
    t.integer "delta_rating_player"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "guild_members", force: :cascade do |t|
    t.integer "guild_id"
    t.integer "guild_member_id"
    t.string "guild_member_role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "guilds", force: :cascade do |t|
    t.string "guild_name"
    t.string "guild_anagram"
    t.integer "giuld_rating"
    t.string "guild_avatar"
    t.text "guild_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "user_session_id"
    t.string "user_key"
    t.datetime "user_time_accepting"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_nickname"
    t.string "user_emal"
    t.string "user_pass"
    t.string "user_role"
    t.string "user_photo"
    t.integer "user_rating"
    t.string "intra_token"
    t.integer "google_token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20130831223031) do

  create_table "clubs", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "stadium_id"
    t.string   "img_url"
    t.date     "established_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fixtures", force: true do |t|
    t.integer  "home_club"
    t.integer  "away_club"
    t.integer  "stadium_id"
    t.integer  "referee_id"
    t.integer  "competition_id"
    t.datetime "fix_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "home_score"
    t.integer  "away_score"
  end

  create_table "news", force: true do |t|
    t.string   "title"
    t.string   "content"
    t.string   "img_url"
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",     null: false
    t.string   "encrypted_password",     default: "",     null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
    t.string   "role",                   default: "user"
    t.datetime "locked_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

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

ActiveRecord::Schema.define(version: 20130829221422) do

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
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end

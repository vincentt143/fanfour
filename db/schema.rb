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

ActiveRecord::Schema.define(version: 20131017093416) do

  create_table "age_statistics", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "under_twenty_five"
    t.integer  "twenty_five_to_thirty_nine"
    t.integer  "forties"
    t.integer  "fifties"
    t.integer  "sixty_and_over"
    t.integer  "electorate_id"
  end

  create_table "electorates", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "labor_votes"
    t.float    "labor_percentage"
    t.integer  "liberal_votes"
    t.float    "liberal_percentage"
  end

  create_table "gender_statistics", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "males"
    t.integer  "females"
    t.integer  "electorate_id"
  end

  create_table "members", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.integer  "party_id"
    t.integer  "electorate_id"
  end

  create_table "parties", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "religion_statistics", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "christianity"
    t.integer  "buddhism"
    t.integer  "judaism"
    t.integer  "islam"
    t.integer  "hinduism"
    t.integer  "no_religion"
    t.integer  "other"
    t.integer  "electorate_id"
  end

end

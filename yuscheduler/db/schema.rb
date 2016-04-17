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

ActiveRecord::Schema.define(version: 20160412200644) do

  create_table "colleges", force: :cascade do |t|
    t.string   "name"
    t.integer  "depts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "colleges", ["depts_id"], name: "index_colleges_on_depts_id"

  create_table "courses", primary_key: "crn", force: :cascade do |t|
    t.decimal  "credits"
    t.string   "crse"
    t.string   "prof"
    t.string   "title"
    t.string   "day1"
    t.time     "time1s"
    t.time     "time1f"
    t.string   "day2"
    t.time     "time2s"
    t.time     "time2f"
    t.boolean  "select"
    t.integer  "section"
    t.integer  "cap"
    t.integer  "act"
    t.integer  "rem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "depts", force: :cascade do |t|
    t.string   "name"
    t.integer  "courses_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "depts", ["courses_id"], name: "index_depts_on_courses_id"

end

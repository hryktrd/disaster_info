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

ActiveRecord::Schema.define(version: 20140819070443) do

  create_table "areas", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "tel"
    t.decimal  "lat",        precision: 11, scale: 8
    t.decimal  "lng",        precision: 11, scale: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "text"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["area_id"], name: "index_comments_on_area_id"

  create_table "needs", force: true do |t|
    t.string   "thing"
    t.boolean  "status"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "needs", ["area_id"], name: "index_needs_on_area_id"

  create_table "photos", force: true do |t|
    t.binary   "data",         limit: 3145728
    t.string   "datatype"
    t.integer  "area_id"
    t.integer  "situation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["area_id"], name: "index_photos_on_area_id"
  add_index "photos", ["situation_id"], name: "index_photos_on_situation_id"

  create_table "situations", force: true do |t|
    t.text     "text"
    t.boolean  "status"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "situations", ["area_id"], name: "index_situations_on_area_id"

end

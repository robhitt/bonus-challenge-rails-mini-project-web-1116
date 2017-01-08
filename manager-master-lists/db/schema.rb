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

ActiveRecord::Schema.define(version: 20170108185825) do

  create_table "band_managers", force: :cascade do |t|
    t.integer  "band_id"
    t.integer  "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "band_members", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "apt"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "instrument"
    t.string   "email"
    t.string   "phone"
    t.text     "notes"
    t.integer  "band_id"
    t.date     "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bands", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.string   "photo_url"
    t.string   "logo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "apt"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "office_id"
    t.string   "email"
    t.string   "phone"
    t.string   "ext"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
    t.string   "password_digest"
  end

  create_table "offices", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.string   "suite"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "phone"
    t.string   "fax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

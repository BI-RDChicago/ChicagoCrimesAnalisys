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

ActiveRecord::Schema.define(version: 20170728030312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "community_areas", force: :cascade do |t|
    t.integer  "id_source"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "crimes", force: :cascade do |t|
    t.integer  "id_source"
    t.datetime "date"
    t.string   "location_description"
    t.boolean  "arrest"
    t.boolean  "domestic"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "community_area_id"
    t.integer  "iucr_id"
    t.index ["community_area_id"], name: "index_crimes_on_community_area_id", using: :btree
    t.index ["iucr_id"], name: "index_crimes_on_iucr_id", using: :btree
  end

  create_table "iucrs", force: :cascade do |t|
    t.string   "iucrcode"
    t.string   "primary_description"
    t.string   "secondary_description"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_foreign_key "crimes", "community_areas"
  add_foreign_key "crimes", "iucrs"
end

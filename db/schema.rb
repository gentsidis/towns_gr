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

ActiveRecord::Schema.define(version: 20170107162551) do

  create_table "kal_cities", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "regional_unity_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["regional_unity_id"], name: "index_kal_cities_on_regional_unity_id"
  end

  create_table "kap_cities", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "prefecture_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["prefecture_id"], name: "index_kap_cities_on_prefecture_id"
  end

  create_table "prefectures", force: :cascade do |t|
    t.string   "name"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_prefectures_on_region_id"
  end

  create_table "regional_unities", force: :cascade do |t|
    t.string   "name"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_regional_unities_on_region_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.integer  "kal_city_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["kal_city_id"], name: "index_sections_on_kal_city_id"
  end

  create_table "towns", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "kal_townID"
    t.string   "kap_townID"
    t.string   "kal_type"
    t.string   "kal_base"
    t.string   "population"
    t.string   "kap_type"
    t.integer  "section_id"
    t.integer  "kap_city_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["kap_city_id"], name: "index_towns_on_kap_city_id"
    t.index ["section_id"], name: "index_towns_on_section_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end

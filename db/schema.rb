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

ActiveRecord::Schema.define(version: 2019_12_13_130643) do

  create_table "athlete_competitions", force: :cascade do |t|
    t.integer "athlete_id"
    t.integer "competition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["athlete_id"], name: "index_athlete_competitions_on_athlete_id"
    t.index ["competition_id"], name: "index_athlete_competitions_on_competition_id"
  end

  create_table "athletes", force: :cascade do |t|
    t.string "name", null: false
    t.string "sex", null: false
    t.integer "age", null: false
    t.float "weight", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_athletes_on_name", unique: true
  end

  create_table "competitions", force: :cascade do |t|
    t.string "name", null: false
    t.date "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_competitions_on_name", unique: true
  end

end

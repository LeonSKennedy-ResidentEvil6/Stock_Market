# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_11_041706) do

  create_table "investors", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "email"
    t.integer "funds"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sectors", force: :cascade do |t|
    t.string "industry"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string "symbol"
    t.integer "price"
    t.integer "volume"
    t.integer "investor_id"
    t.integer "sector_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["investor_id"], name: "index_stocks_on_investor_id"
    t.index ["sector_id"], name: "index_stocks_on_sector_id"
  end

  add_foreign_key "stocks", "investors"
  add_foreign_key "stocks", "sectors"
end

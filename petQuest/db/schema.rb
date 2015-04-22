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

ActiveRecord::Schema.define(version: 20150422091503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "referencePrice"
    t.integer  "ediblePercentage"
    t.text     "cookMethod"
    t.string   "foodCategory"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "idealcatweights", force: :cascade do |t|
    t.string   "english_name"
    t.integer  "min_kg"
    t.integer  "max_kg"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "idealdogweights", force: :cascade do |t|
    t.string   "english_name"
    t.integer  "min_kg"
    t.integer  "max_kg"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "nutritionfacts", force: :cascade do |t|
    t.string   "category"
    t.string   "foodname"
    t.decimal  "weight"
    t.decimal  "edible"
    t.decimal  "energy"
    t.decimal  "protein"
    t.decimal  "fat"
    t.decimal  "cho"
    t.decimal  "dietaryfiber"
    t.decimal  "ash"
    t.decimal  "cholesterol"
    t.decimal  "vitaminA"
    t.decimal  "retinol"
    t.decimal  "vitaminE"
    t.decimal  "vitaminB1"
    t.decimal  "vitaminB2"
    t.decimal  "vitaminB3"
    t.decimal  "calcium"
    t.decimal  "phosphorous"
    t.decimal  "potassium"
    t.decimal  "sodium"
    t.decimal  "magnesium"
    t.decimal  "iron"
    t.decimal  "zinc"
    t.decimal  "selenium"
    t.decimal  "copper"
    t.decimal  "manganese"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "food_id"
    t.decimal  "vitaminC"
  end

  create_table "nutritions", force: :cascade do |t|
    t.string   "category"
    t.string   "foodname"
    t.decimal  "weight"
    t.decimal  "edible"
    t.decimal  "energy"
    t.decimal  "protein"
    t.decimal  "fat"
    t.decimal  "cho"
    t.decimal  "dietaryfiber"
    t.decimal  "ash"
    t.decimal  "cholesterol"
    t.decimal  "vitaminA"
    t.decimal  "retinol"
    t.decimal  "vitaminE"
    t.decimal  "vitaminB1"
    t.decimal  "vitaminB2"
    t.decimal  "vitaminB3"
    t.decimal  "calcium"
    t.decimal  "phosphorous"
    t.decimal  "potassium"
    t.decimal  "sodium"
    t.decimal  "magnesium"
    t.decimal  "iron"
    t.decimal  "zinc"
    t.decimal  "selenium"
    t.decimal  "copper"
    t.decimal  "manganese"
    t.integer  "food_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.decimal  "vitaminC"
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "pet_type"
    t.string   "age"
    t.integer  "body_weight"
    t.string   "breed"
    t.string   "body_condition_score"
    t.string   "activity"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end

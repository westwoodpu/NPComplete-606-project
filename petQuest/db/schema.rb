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

ActiveRecord::Schema.define(version: 20150505055105) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "reference_price"
    t.string   "cook_method"
    t.string   "food_category"
    t.string   "img_dir"
    t.integer  "food_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "idealcatweights", force: :cascade do |t|
    t.string   "english_name"
    t.float    "min_kg"
    t.float    "max_kg"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "idealdogweights", force: :cascade do |t|
    t.string   "english_name"
    t.float    "min_kg"
    t.float    "max_kg"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "nutritions", force: :cascade do |t|
    t.string   "category"
    t.string   "foodname"
    t.decimal  "weight",       precision: 8, scale: 2
    t.decimal  "edible",       precision: 8, scale: 2
    t.decimal  "energy",       precision: 8, scale: 2
    t.decimal  "protein",      precision: 8, scale: 2
    t.decimal  "fat",          precision: 8, scale: 2
    t.decimal  "cho",          precision: 8, scale: 2
    t.decimal  "dietaryfiber", precision: 8, scale: 2
    t.decimal  "ash",          precision: 8, scale: 2
    t.decimal  "cholesterol",  precision: 8, scale: 2
    t.decimal  "vitaminA",     precision: 8, scale: 2
    t.decimal  "retinol",      precision: 8, scale: 2
    t.decimal  "vitaminE",     precision: 8, scale: 2
    t.decimal  "vitaminB1",    precision: 8, scale: 2
    t.decimal  "vitaminB2",    precision: 8, scale: 2
    t.decimal  "vitaminB3",    precision: 8, scale: 2
    t.decimal  "calcium",      precision: 8, scale: 2
    t.decimal  "phosphorous",  precision: 8, scale: 2
    t.decimal  "potassium",    precision: 8, scale: 2
    t.decimal  "sodium",       precision: 8, scale: 2
    t.decimal  "magnesium",    precision: 8, scale: 2
    t.decimal  "iron",         precision: 8, scale: 2
    t.decimal  "zinc",         precision: 8, scale: 2
    t.decimal  "selenium",     precision: 8, scale: 2
    t.decimal  "copper",       precision: 8, scale: 2
    t.decimal  "manganese",    precision: 8, scale: 2
    t.integer  "food_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.decimal  "vitaminC",     precision: 8, scale: 2
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "pet_type"
    t.string   "age"
    t.float    "body_weight"
    t.string   "breed"
    t.string   "body_condition_score"
    t.string   "activity"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.string   "foodname"
    t.decimal  "weight",     precision: 8, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

end

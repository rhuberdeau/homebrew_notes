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

ActiveRecord::Schema.define(version: 20180709013716) do

  create_table "brew_methods", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hop_schedules", force: :cascade do |t|
    t.integer "hop_id", null: false
    t.integer "recipe_id", null: false
    t.integer "amount", null: false
    t.string "at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hop_id"], name: "index_hop_schedules_on_hop_id"
    t.index ["recipe_id"], name: "index_hop_schedules_on_recipe_id"
  end

  create_table "hops", force: :cascade do |t|
    t.string "name", null: false
    t.integer "alpha_level", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "malts", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_malts", force: :cascade do |t|
    t.integer "malt_id", null: false
    t.integer "recipe_id", null: false
    t.integer "amount", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["malt_id"], name: "index_recipe_malts_on_malt_id"
    t.index ["recipe_id"], name: "index_recipe_malts_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "style_id"
    t.integer "brew_method_id"
    t.integer "batch_size"
    t.float "original_gravity"
    t.float "final_gravity"
    t.index ["brew_method_id"], name: "index_recipes_on_brew_method_id"
    t.index ["style_id"], name: "index_recipes_on_style_id"
  end

  create_table "styles", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

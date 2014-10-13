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

ActiveRecord::Schema.define(version: 20140924220240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "filters", force: true do |t|
    t.text     "kind"
    t.text     "design"
    t.text     "name"
    t.integer  "poles",      limit: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "filters_products", id: false, force: true do |t|
    t.integer "filter_id"
    t.integer "product_id"
  end

  create_table "product_submissions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productentries", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "location"
    t.integer  "price"
    t.string   "image"
    t.integer  "item_id",     limit: 8
    t.string   "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
    t.datetime "end_date"
    t.string   "sell_status"
  end

  add_index "productentries", ["product_id"], name: "index_productentries_on_product_id", using: :btree

  create_table "productprices", force: true do |t|
    t.integer  "med_price"
    t.integer  "high_price"
    t.integer  "low_price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
    t.date     "reference_date"
  end

  add_index "productprices", ["product_id"], name: "index_productprices_on_product_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "image"
    t.string   "oscillator"
    t.string   "filter"
    t.string   "revisions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.text     "desc"
    t.boolean  "sampler"
    t.boolean  "drum"
    t.boolean  "synth"
    t.integer  "polyphony",  limit: 2
    t.text     "control",              default: [], array: true
    t.text     "waveform",             default: [], array: true
    t.text     "exclusion",            default: [], array: true
    t.text     "sampling",                          array: true
    t.string   "memory"
  end

  add_index "products", ["company_id"], name: "index_products_on_company_id", using: :btree
  add_index "products", ["control"], name: "index_products_on_control", using: :gin

  create_table "productsubmissions", force: true do |t|
    t.string  "name"
    t.integer "year"
    t.integer "company_id"
  end

  add_index "productsubmissions", ["company_id"], name: "index_productsubmissions_on_company_id", using: :btree

  create_table "relationships", force: true do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["product_id"], name: "index_relationships_on_product_id", using: :btree
  add_index "relationships", ["user_id", "product_id"], name: "index_relationships_on_user_id_and_product_id", unique: true, using: :btree
  add_index "relationships", ["user_id"], name: "index_relationships_on_user_id", using: :btree

  create_table "scraps", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "price"
    t.date     "end_date"
    t.string   "state"
    t.integer  "bids"
    t.integer  "product_id"
  end

  add_index "scraps", ["product_id"], name: "index_scraps_on_product_id", using: :btree

  create_table "search_suggestions", force: true do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
  end

  add_index "search_suggestions", ["product_id"], name: "index_search_suggestions_on_product_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.boolean  "admin"
    t.string   "remember_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.boolean  "guest"
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "location"
    t.date     "birthday"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.string   "country_code"
    t.string   "city"
    t.boolean  "email_me"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "watched_entries", force: true do |t|
    t.integer  "user_id"
    t.integer  "productentry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "end_date"
  end

  add_index "watched_entries", ["productentry_id", "user_id"], name: "index_watched_entries_on_productentry_id_and_user_id", unique: true, using: :btree
  add_index "watched_entries", ["productentry_id"], name: "index_watched_entries_on_productentry_id", using: :btree
  add_index "watched_entries", ["user_id"], name: "index_watched_entries_on_user_id", using: :btree

end

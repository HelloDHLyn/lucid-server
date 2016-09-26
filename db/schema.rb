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

ActiveRecord::Schema.define(version: 20160926092502) do

  create_table "applications", force: :cascade do |t|
    t.string   "name"
    t.string   "package"
    t.string   "platform"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "icon",        default: "", null: false
    t.integer  "producer_id", default: -1, null: false
  end

  create_table "releases", force: :cascade do |t|
    t.boolean  "is_latest"
    t.boolean  "is_release"
    t.integer  "version_code"
    t.string   "version_name"
    t.text     "path"
    t.integer  "applicaton_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.text     "release_note",  default: "", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "access_token"
    t.boolean  "is_producer",             default: false
    t.string   "username",     limit: 20
  end

end

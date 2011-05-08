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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110508211437) do

  create_table "stations", :force => true do |t|
    t.integer  "remote_id"
    t.string   "name"
    t.string   "so2"
    t.string   "no2"
    t.string   "particles"
    t.string   "o3"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stations", ["remote_id"], :name => "index_stations_on_remote_id", :unique => true

  create_table "subscriptions", :force => true do |t|
    t.string   "email"
    t.integer  "station_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

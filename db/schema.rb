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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130324112525) do

  create_table "cabs", :force => true do |t|
    t.string   "name"
    t.boolean  "company",      :default => false
    t.string   "reg"
    t.boolean  "verified",     :default => false
    t.string   "phone_number"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "fares", :force => true do |t|
    t.integer  "cab_id"
    t.integer  "query_id"
    t.boolean  "verified"
    t.string   "reporter"
    t.string   "phone_number"
    t.integer  "price_cents",    :default => 0,     :null => false
    t.string   "price_currency", :default => "KES", :null => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "fares", ["cab_id"], :name => "index_fares_on_cab_id"
  add_index "fares", ["query_id"], :name => "index_fares_on_query_id"

  create_table "queries", :force => true do |t|
    t.string   "from"
    t.string   "to"
    t.float    "origin_lat"
    t.float    "origin_lon"
    t.float    "dest_lat"
    t.float    "dest_lon"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end

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

ActiveRecord::Schema.define(:version => 20121031013753) do

  create_table "listings", :force => true do |t|
    t.string   "rental_type"
    t.integer  "rent"
    t.integer  "deposit"
    t.integer  "number_of_bedrooms"
    t.integer  "number_of_bathrooms"
    t.integer  "square_feet"
    t.integer  "length_of_lease"
    t.integer  "length_of_lease_units"
    t.integer  "user_id"
    t.integer  "address_id"
    t.integer  "gps_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.date     "available_at"
    t.boolean  "washer_and_dryer"
    t.boolean  "dishwasher"
    t.boolean  "microwave"
    t.boolean  "refrigerator"
    t.boolean  "oven"
    t.boolean  "electric"
    t.boolean  "gas"
    t.boolean  "heat"
    t.boolean  "water"
    t.boolean  "air_conditioning"
    t.boolean  "cats"
    t.boolean  "dogs"
  end

  create_table "photos", :force => true do |t|
    t.string   "title"
    t.string   "image"
    t.integer  "listing_id"
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
    t.string   "name",                   :default => ""
    t.string   "location",               :default => ""
    t.string   "provider",               :default => ""
    t.string   "uid",                    :default => ""
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end

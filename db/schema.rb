# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140506120351) do

  create_table "homes", :force => true do |t|
    t.string   "name"
    t.date     "dob"
    t.string   "address"
    t.integer  "mobile"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "filename"
    t.string   "content_type"
    t.binary   "binary_data"
    t.string   "imgtype"
  end

  create_table "photos", :force => true do |t|
    t.string   "content_type"
    t.string   "imgtype"
    t.string   "filename"
    t.binary   "binary_data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "hid"
  end

end

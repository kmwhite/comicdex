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

ActiveRecord::Schema.define(:version => 20130718020805) do

  create_table "issues", :force => true do |t|
    t.string   "title",              :null => false
    t.text     "description"
    t.integer  "number",             :null => false
    t.date     "publication_date",   :null => false
    t.integer  "volume_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
  end

  add_index "issues", ["volume_id"], :name => "index_issues_on_volume_id"

  create_table "publishers", :force => true do |t|
    t.string   "name",       :null => false
    t.binary   "logo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "series", :force => true do |t|
    t.string   "name",               :null => false
    t.text     "description"
    t.integer  "publisher_id"
    t.integer  "series_type_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
  end

  add_index "series", ["publisher_id"], :name => "index_series_on_publisher_id"
  add_index "series", ["series_type_id"], :name => "index_series_on_series_type_id"

  create_table "series_types", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "schedule",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "volumes", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "number",     :null => false
    t.integer  "series_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "volumes", ["series_id"], :name => "index_volumes_on_series_id"

end

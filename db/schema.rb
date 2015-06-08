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

ActiveRecord::Schema.define(:version => 20150608202033) do

  create_table "actor_type_translations", :force => true do |t|
    t.integer  "actor_type_id"
    t.string   "locale",        :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "name"
  end

  add_index "actor_type_translations", ["actor_type_id"], :name => "index_actor_type_translations_on_actor_type_id"
  add_index "actor_type_translations", ["locale"], :name => "index_actor_type_translations_on_locale"

  create_table "actor_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "actors", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.boolean  "gender"
    t.date     "dob"
    t.integer  "children"
    t.boolean  "crim_back"
    t.boolean  "mental_reg"
    t.boolean  "gun"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "report_id"
    t.integer  "actor_type_id"
    t.integer  "education_status_id"
    t.integer  "employment_status_id"
    t.integer  "family_status_id"
    t.integer  "social_status_id"
    t.integer  "substance_id"
    t.integer  "relationship_id"
  end

  add_index "actors", ["actor_type_id"], :name => "index_actors_on_actor_type_id"
  add_index "actors", ["education_status_id"], :name => "index_actors_on_education_status_id"
  add_index "actors", ["employment_status_id"], :name => "index_actors_on_employment_status_id"
  add_index "actors", ["family_status_id"], :name => "index_actors_on_family_status_id"
  add_index "actors", ["relationship_id"], :name => "index_actors_on_relationship_id"
  add_index "actors", ["report_id"], :name => "index_actors_on_report_id"
  add_index "actors", ["social_status_id"], :name => "index_actors_on_social_status_id"
  add_index "actors", ["substance_id"], :name => "index_actors_on_substance_id"

  create_table "district_translations", :force => true do |t|
    t.integer  "district_id"
    t.string   "locale",      :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "name"
  end

  add_index "district_translations", ["district_id"], :name => "index_district_translations_on_district_id"
  add_index "district_translations", ["locale"], :name => "index_district_translations_on_locale"

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "education_status_translations", :force => true do |t|
    t.integer  "education_status_id"
    t.string   "locale",              :null => false
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "name"
  end

  add_index "education_status_translations", ["education_status_id"], :name => "index_education_status_translations_on_education_status_id"
  add_index "education_status_translations", ["locale"], :name => "index_education_status_translations_on_locale"

  create_table "education_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emergency_arrival_time_translations", :force => true do |t|
    t.integer  "emergency_arrival_time_id"
    t.string   "locale",                    :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "name"
  end

  add_index "emergency_arrival_time_translations", ["emergency_arrival_time_id"], :name => "index_25e3f3020462a3e5d15ee3f82ff21966e637f050"
  add_index "emergency_arrival_time_translations", ["locale"], :name => "index_emergency_arrival_time_translations_on_locale"

  create_table "emergency_arrival_times", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employment_status_translations", :force => true do |t|
    t.integer  "employment_status_id"
    t.string   "locale",               :null => false
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "name"
  end

  add_index "employment_status_translations", ["employment_status_id"], :name => "index_employment_status_translations_on_employment_status_id"
  add_index "employment_status_translations", ["locale"], :name => "index_employment_status_translations_on_locale"

  create_table "employment_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "family_status_translations", :force => true do |t|
    t.integer  "family_status_id"
    t.string   "locale",           :null => false
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "name"
  end

  add_index "family_status_translations", ["family_status_id"], :name => "index_family_status_translations_on_family_status_id"
  add_index "family_status_translations", ["locale"], :name => "index_family_status_translations_on_locale"

  create_table "family_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "location_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "location_category_translations", :force => true do |t|
    t.integer  "location_category_id"
    t.string   "locale",               :null => false
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "name"
  end

  add_index "location_category_translations", ["locale"], :name => "index_location_category_translations_on_locale"
  add_index "location_category_translations", ["location_category_id"], :name => "index_location_category_translations_on_location_category_id"

  create_table "motive_translations", :force => true do |t|
    t.integer  "motive_id"
    t.string   "locale",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  add_index "motive_translations", ["locale"], :name => "index_motive_translations_on_locale"
  add_index "motive_translations", ["motive_id"], :name => "index_motive_translations_on_motive_id"

  create_table "motives", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "page_translations", :force => true do |t|
    t.integer  "page_id"
    t.string   "locale",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
    t.text     "content"
  end

  add_index "page_translations", ["locale"], :name => "index_page_translations_on_locale"
  add_index "page_translations", ["page_id"], :name => "index_page_translations_on_page_id"

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "pages", ["name"], :name => "index_pages_on_name"

  create_table "police_arrival_time_translations", :force => true do |t|
    t.integer  "police_arrival_time_id"
    t.string   "locale",                 :null => false
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "name"
  end

  add_index "police_arrival_time_translations", ["locale"], :name => "index_police_arrival_time_translations_on_locale"
  add_index "police_arrival_time_translations", ["police_arrival_time_id"], :name => "index_5ce134b863f9bcab80c3f8f25190d5fe9b05a679"

  create_table "police_arrival_times", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "relationship_translations", :force => true do |t|
    t.integer  "relationship_id"
    t.string   "locale",          :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "name"
  end

  add_index "relationship_translations", ["locale"], :name => "index_relationship_translations_on_locale"
  add_index "relationship_translations", ["relationship_id"], :name => "index_relationship_translations_on_relationship_id"

  create_table "relationships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reports", :force => true do |t|
    t.string   "official_case_number"
    t.date     "crime_date"
    t.time     "crime_time"
    t.string   "location_address"
    t.float    "location_lat"
    t.float    "location_lon"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "weapon_id"
    t.integer  "motive_id"
    t.integer  "status_id"
    t.integer  "location_category_id"
    t.integer  "emergency_arrival_time_id"
    t.integer  "police_arrival_time_id"
    t.integer  "district_id"
  end

  add_index "reports", ["district_id"], :name => "index_reports_on_district_id"
  add_index "reports", ["motive_id"], :name => "index_reports_on_motive_id"
  add_index "reports", ["status_id"], :name => "index_reports_on_status_id"
  add_index "reports", ["weapon_id"], :name => "index_reports_on_weapon_id"

  create_table "social_status_translations", :force => true do |t|
    t.integer  "social_status_id"
    t.string   "locale",           :null => false
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "name"
  end

  add_index "social_status_translations", ["locale"], :name => "index_social_status_translations_on_locale"
  add_index "social_status_translations", ["social_status_id"], :name => "index_social_status_translations_on_social_status_id"

  create_table "social_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "status_translations", :force => true do |t|
    t.integer  "status_id"
    t.string   "locale",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  add_index "status_translations", ["locale"], :name => "index_status_translations_on_locale"
  add_index "status_translations", ["status_id"], :name => "index_status_translations_on_status_id"

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "substance_translations", :force => true do |t|
    t.integer  "substance_id"
    t.string   "locale",       :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "name"
  end

  add_index "substance_translations", ["locale"], :name => "index_substance_translations_on_locale"
  add_index "substance_translations", ["substance_id"], :name => "index_substance_translations_on_substance_id"

  create_table "substances", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.integer  "role",                   :default => 0,  :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
    t.string   "nickname"
    t.string   "avatar"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["provider", "uid"], :name => "idx_users_provider"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "weapon_translations", :force => true do |t|
    t.integer  "weapon_id"
    t.string   "locale",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  add_index "weapon_translations", ["locale"], :name => "index_weapon_translations_on_locale"
  add_index "weapon_translations", ["weapon_id"], :name => "index_weapon_translations_on_weapon_id"

  create_table "weapons", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

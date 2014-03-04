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

ActiveRecord::Schema.define(:version => 20140208105347) do

  create_table "accepteds", :force => true do |t|
    t.integer  "user_id"
    t.integer  "friend_request_id"
    t.integer  "friend_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "castes", :force => true do |t|
    t.string   "name"
    t.integer  "religion_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "degrees", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "educations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "friend_requests", :force => true do |t|
    t.integer  "user_id"
    t.integer  "message_id"
    t.boolean  "accepted"
    t.boolean  "declined"
    t.integer  "reply_message_id"
    t.integer  "from_user_id"
    t.integer  "to_user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "friendships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hobbies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "inboxes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "from_user"
    t.integer  "to_user"
    t.integer  "message_type_id"
    t.integer  "message_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "interests", :force => true do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "marital_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "message_types", :force => true do |t|
    t.string   "descr"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messages", :force => true do |t|
    t.text     "msg_content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "moderations", :force => true do |t|
    t.integer  "moderatable_id"
    t.string   "moderatable_type"
    t.text     "data",             :null => false
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "professions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "religions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "special_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sub_castes", :force => true do |t|
    t.integer  "caste_id"
    t.string   "caste_name"
    t.integer  "religion_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "user_filter_attribute_values", :force => true do |t|
    t.integer  "user_filter_attribute_id"
    t.integer  "max"
    t.integer  "min"
    t.string   "value"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "user_filter_attributes", :force => true do |t|
    t.integer  "user_filter_id"
    t.string   "filter_attribute"
    t.string   "field_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "user_filters", :force => true do |t|
    t.integer  "user_id"
    t.string   "filter_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "user_pictures", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "approved"
    t.integer  "approved_by_admin_id"
    t.string   "file_name"
    t.datetime "approved_date"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "avatar"
    t.boolean  "primary"
    t.integer  "user_profile_id"
  end

  create_table "user_profile_unapproveds", :force => true do |t|
    t.integer  "user_profile_id"
    t.string   "attribute"
    t.boolean  "approved"
    t.string   "rejection_message"
    t.integer  "review_status_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "new_value"
    t.string   "old_value"
  end

  create_table "user_profiles", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "gender"
    t.date     "dob"
    t.datetime "tob"
    t.string   "pob"
    t.integer  "age"
    t.integer  "salary"
    t.integer  "caste_id"
    t.integer  "sub_caste_id"
    t.integer  "height"
    t.integer  "religion_id"
    t.integer  "affluence_id"
    t.integer  "profession"
    t.integer  "education"
    t.integer  "work_city"
    t.integer  "work_state"
    t.integer  "work_country"
    t.integer  "food_habit"
    t.integer  "mangalik"
    t.integer  "special_status"
    t.boolean  "specs"
    t.integer  "spec_power"
    t.integer  "marital_status"
    t.integer  "mother_tongue"
    t.integer  "complexion"
    t.integer  "body_type"
    t.integer  "weight"
    t.integer  "father_status"
    t.integer  "mother_status"
    t.integer  "father_profession"
    t.integer  "mother_profession"
    t.integer  "native"
    t.integer  "family_values"
    t.integer  "elder_brothers"
    t.integer  "elder_sisters"
    t.integer  "younger_brothers"
    t.integer  "younger_sisters"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_texts", :force => true do |t|
    t.integer  "user_id"
    t.text     "special_status"
    t.text     "own_status"
    t.text     "family"
    t.text     "profession"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "code"
    t.boolean  "admin"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "height"
    t.integer  "religion_id"
    t.integer  "caste_id"
    t.integer  "sub_caste_id"
    t.integer  "age"
    t.date     "dob"
    t.boolean  "gender"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_degrees", :id => false, :force => true do |t|
    t.integer "user_id",   :null => false
    t.integer "degree_id", :null => false
  end

  create_table "users_hobbies", :id => false, :force => true do |t|
    t.integer "user_id",  :null => false
    t.integer "hobby_id", :null => false
  end

end

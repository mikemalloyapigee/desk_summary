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

ActiveRecord::Schema.define(:version => 20130127062415) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "environments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "headers", :force => true do |t|
    t.string   "key"
    t.string   "value"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "test_case_id"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orgs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "query_params", :force => true do |t|
    t.string   "key"
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "regression_tests", :force => true do |t|
    t.string   "name"
    t.integer  "environment_id"
    t.integer  "org_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "test_cases"
  end

  create_table "releases", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "result_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "servers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "templates", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "test_case_results", :force => true do |t|
    t.integer  "test_case_id"
    t.string   "verification_signature"
    t.text     "headers"
    t.text     "body"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "status_code"
    t.integer  "response_code"
    t.string   "details"
    t.boolean  "result"
    t.text     "response_headers"
    t.integer  "regression_test_id"
  end

  create_table "test_cases", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.boolean  "uses_oauth"
    t.text     "auth_url"
    t.text     "auth_headers"
    t.text     "auth_body"
    t.string   "request_type"
    t.text     "request_url"
    t.text     "request_body"
    t.string   "verification_signature"
    t.text     "request_headers"
    t.integer  "company_id"
  end

  create_table "test_relationships", :force => true do |t|
    t.integer  "regression_test_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "test_case_id"
  end

  create_table "test_results", :force => true do |t|
    t.integer  "result_type_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "test_step_results", :force => true do |t|
    t.integer  "result_type_id"
    t.string   "response_code"
    t.text     "response_headers"
    t.text     "response_body"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "test_steps", :force => true do |t|
    t.string   "name"
    t.string   "resource"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "validations", :force => true do |t|
    t.string   "type"
    t.string   "key"
    t.string   "value"
    t.text     "match_string"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end

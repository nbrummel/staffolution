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

ActiveRecord::Schema.define(version: 20140606074343) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "education_classes", force: true do |t|
    t.string   "class_name"
    t.string   "class_type"
    t.text     "class_keywords"
    t.date     "class_date_start"
    t.date     "class_date_end"
    t.time     "class_time_start"
    t.time     "class_time_end"
    t.integer  "class_worth"
    t.integer  "reps_id"
    t.string   "class_category"
    t.string   "class_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "education_classes", ["reps_id"], name: "index_education_classes_on_reps_id"

  create_table "employees", force: true do |t|
    t.string   "employee_email"
    t.string   "employee_phone"
    t.string   "employee_zipcode"
    t.string   "employee_first_name"
    t.string   "employee_last_name"
    t.integer  "user_id"
    t.string   "employee_bages"
    t.text     "employee_description"
    t.integer  "employee_experience_years"
    t.integer  "employee_experience_months"
    t.string   "employee_lic_number"
    t.string   "employee_type"
    t.float    "employee_rating"
    t.boolean  "employee_punctuality"
    t.boolean  "employee_dependability"
    t.boolean  "employee_reliable_transportation"
    t.boolean  "employee_accurate_calendar"
    t.boolean  "employee_transportation"
    t.string   "employee_school"
    t.string   "employee_languages"
    t.string   "employee_qualifications"
    t.string   "employee_credentials"
    t.string   "employee_experience"
    t.boolean  "employee_phone_verified"
    t.boolean  "employee_email_verified"
    t.boolean  "employee_lic_verified"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["user_id"], name: "index_employees_on_user_id"

  create_table "employers", force: true do |t|
    t.string   "employer_name"
    t.string   "employer_zipcode"
    t.string   "employer_phone"
    t.string   "employer_url"
    t.string   "employer_email"
    t.integer  "user_id"
    t.string   "employer_street_number"
    t.string   "employer_street"
    t.string   "employer_unit_number"
    t.string   "employer_city"
    t.string   "employer_state"
    t.text     "employer_office_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employers", ["user_id"], name: "index_employers_on_user_id"

  create_table "jobs", force: true do |t|
    t.integer  "user_id"
    t.integer  "employee_id"
    t.string   "job_position"
    t.text     "job_description"
    t.date     "job_start_date"
    t.date     "job_end_date"
    t.float    "job_compensation"
    t.time     "job_start_time"
    t.time     "job_end_time"
    t.boolean  "job_filled"
    t.string   "job_title"
    t.integer  "employer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jobs", ["employee_id"], name: "index_jobs_on_employee_id"
  add_index "jobs", ["employer_id"], name: "index_jobs_on_employer_id"
  add_index "jobs", ["user_id"], name: "index_jobs_on_user_id"

  create_table "reps", force: true do |t|
    t.string   "rep_name"
    t.string   "rep_type"
    t.text     "rep_description"
    t.integer  "user_id"
    t.string   "rep_email"
    t.string   "rep_phone"
    t.string   "rep_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reps", ["user_id"], name: "index_reps_on_user_id"

  create_table "reviews", force: true do |t|
    t.integer  "employee_id"
    t.float    "review_rating"
    t.integer  "user_id"
    t.text     "review_description"
    t.boolean  "review_employee_recommendation"
    t.integer  "employer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["employee_id"], name: "index_reviews_on_employee_id"
  add_index "reviews", ["employer_id"], name: "index_reviews_on_employer_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

end

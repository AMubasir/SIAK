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

ActiveRecord::Schema.define(version: 20171105173537) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.integer  "credit"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "code"
    t.integer  "lecturer_id"
  end

  add_index "courses", ["lecturer_id"], name: "index_courses_on_lecturer_id"

  create_table "lecturers", force: :cascade do |t|
    t.integer  "lecturer_number"
    t.string   "full_name"
    t.string   "address"
    t.datetime "date_of_birth"
    t.string   "place_of_birth"
    t.string   "phone"
    t.string   "gender"
    t.string   "religion"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "major_courses", force: :cascade do |t|
    t.integer  "major_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "major_courses", ["course_id"], name: "index_major_courses_on_course_id"
  add_index "major_courses", ["major_id"], name: "index_major_courses_on_major_id"

  create_table "majors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "study_plans", force: :cascade do |t|
    t.string   "code"
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "study_plans", ["course_id"], name: "index_study_plans_on_course_id"
  add_index "study_plans", ["user_id"], name: "index_study_plans_on_user_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "student_number"
    t.string   "full_name"
    t.string   "address"
    t.string   "place_of_birth"
    t.datetime "date_of_birth"
    t.string   "phone"
    t.string   "gender"
    t.string   "religion"
    t.integer  "semester"
    t.integer  "grade"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

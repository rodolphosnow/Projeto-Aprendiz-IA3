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

ActiveRecord::Schema.define(version: 20161020020209) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "street"
    t.string   "number"
    t.string   "district"
    t.string   "complement"
    t.string   "zipcode"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id"

  create_table "admins", force: :cascade do |t|
    t.string   "name"
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
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "apprentice_courses", force: :cascade do |t|
    t.integer  "apprentice_id"
    t.integer  "course_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "apprentice_courses", ["apprentice_id"], name: "index_apprentice_courses_on_apprentice_id"
  add_index "apprentice_courses", ["course_id"], name: "index_apprentice_courses_on_course_id"

  create_table "apprentices", force: :cascade do |t|
    t.string   "code"
    t.integer  "userable_id"
    t.string   "userable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "apprentices", ["userable_type", "userable_id"], name: "index_apprentices_on_userable_type_and_userable_id"

  create_table "classroom_presences", force: :cascade do |t|
    t.integer  "classroom_students_id"
    t.datetime "data"
    t.boolean  "first"
    t.boolean  "second"
    t.boolean  "third"
    t.boolean  "fourth"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "classroom_students", force: :cascade do |t|
    t.integer  "classroom_id"
    t.integer  "apprentice_id"
    t.integer  "teacher_id"
    t.datetime "started_at"
    t.datetime "ends_in"
    t.string   "status",        default: "in-progress"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "classroom_students", ["apprentice_id"], name: "index_classroom_students_on_apprentice_id"
  add_index "classroom_students", ["classroom_id"], name: "index_classroom_students_on_classroom_id"
  add_index "classroom_students", ["teacher_id"], name: "index_classroom_students_on_teacher_id"

  create_table "classrooms", force: :cascade do |t|
    t.integer  "subjects_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "classrooms", ["subjects_id"], name: "index_classrooms_on_subjects_id"

  create_table "companies", force: :cascade do |t|
    t.integer  "userable_id"
    t.string   "userable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "companies", ["userable_type", "userable_id"], name: "index_companies_on_userable_type_and_userable_id"

  create_table "contracts", force: :cascade do |t|
    t.integer  "apprentice_id"
    t.integer  "company_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "contracts", ["apprentice_id"], name: "index_contracts_on_apprentice_id"
  add_index "contracts", ["company_id"], name: "index_contracts_on_company_id"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluations", force: :cascade do |t|
    t.integer  "classroom_students_id"
    t.string   "criterion"
    t.string   "grade"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "responsibles", force: :cascade do |t|
    t.integer  "userable_id"
    t.string   "userable_type"
    t.integer  "apprentice_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "responsibles", ["apprentice_id"], name: "index_responsibles_on_apprentice_id"
  add_index "responsibles", ["userable_type", "userable_id"], name: "index_responsibles_on_userable_type_and_userable_id"

  create_table "subject_evaluations", force: :cascade do |t|
    t.integer  "subject_id"
    t.string   "criterion"
    t.string   "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.integer  "courses_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subjects", ["courses_id"], name: "index_subjects_on_courses_id"

  create_table "teachers", force: :cascade do |t|
    t.string   "code"
    t.integer  "userable_id"
    t.string   "userable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "teachers", ["userable_type", "userable_id"], name: "index_teachers_on_userable_type_and_userable_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "identifier"
    t.datetime "birthdate"
    t.string   "phone"
    t.string   "second_phone"
    t.integer  "userable_id"
    t.string   "userable_type"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["userable_id", "userable_type"], name: "index_users_on_userable_id_and_userable_type"
  add_index "users", ["userable_type", "userable_id"], name: "index_users_on_userable_type_and_userable_id"

end

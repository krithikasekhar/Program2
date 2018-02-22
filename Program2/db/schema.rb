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

ActiveRecord::Schema.define(version: 20180220045314) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.integer "application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.string "current_company"
    t.string "linkedin_url"
    t.string "portfolio_url"
    t.text "additional_info"
    t.string "gender"
    t.string "race"
    t.string "veteran_status"
    t.string "disability_status"
    t.string "resume"
    t.string "status"
    t.index ["users_id"], name: "index_applications_on_users_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id", null: false
    t.string "website"
    t.string "hq"
    t.integer "size"
    t.integer "founded"
    t.string "industry"
    t.integer "revenue"
    t.text "synopsis"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "companies_id", null: false
    t.text "job_description", null: false
    t.string "empoyment_type"
    t.text "responsibilities"
    t.text "requirements"
    t.index ["companies_id"], name: "index_jobs_on_companies_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email_id", null: false
    t.string "password", null: false
    t.string "phone"
    t.bigint "companies_id"
    t.boolean "recruiter"
    t.boolean "jobseeker"
    t.index ["companies_id"], name: "index_users_on_companies_id"
  end

end

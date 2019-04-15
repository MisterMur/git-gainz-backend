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

ActiveRecord::Schema.define(version: 2019_04_15_174138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "circuits", force: :cascade do |t|
    t.integer "weight"
    t.integer "reps"
    t.integer "rest"
    t.integer "exercise_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "name"
  end

  create_table "user_schedules", force: :cascade do |t|
    t.integer "user_id"
    t.integer "schedule_id"
  end

  create_table "user_workouts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_workouts_on_user_id"
    t.index ["workout_id"], name: "index_user_workouts_on_workout_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
  end

  create_table "workout_exercises", force: :cascade do |t|
    t.integer "workout_id"
    t.integer "exercise_id"
  end

  create_table "workout_schedules", force: :cascade do |t|
    t.integer "workout_id"
    t.integer "schedule_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "user_workouts", "users"
  add_foreign_key "user_workouts", "workouts"
end

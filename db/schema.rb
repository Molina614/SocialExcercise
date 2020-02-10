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

ActiveRecord::Schema.define(version: 2019_07_23_023753) do

  create_table "cardios", force: :cascade do |t|
    t.time "duration"
    t.decimal "lap"
    t.decimal "distance"
    t.decimal "incline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "calories"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.string "username"
    t.integer "commentable_id"
    t.string "commentable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_comments_on_username"
  end

  create_table "emoji_ratings", force: :cascade do |t|
    t.integer "user_id"
    t.string "emoji"
    t.integer "rateable_id"
    t.string "rateable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_emoji_ratings_on_user_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.integer "reps"
    t.integer "set"
    t.string "description"
    t.string "name"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "actable_id"
    t.string "actable_type"
    t.integer "workout_id"
    t.index ["workout_id"], name: "index_exercises_on_workout_id"
  end

  create_table "friends", force: :cascade do |t|
    t.boolean "best_friend"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "follower_id"
    t.string "followed_id"
    t.index ["followed_id"], name: "index_friends_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_friends_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_friends_on_follower_id"
  end

  create_table "group_posts", force: :cascade do |t|
    t.integer "group_id"
    t.index ["group_id"], name: "index_group_posts_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "liftings", id: false, force: :cascade do |t|
    t.decimal "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "exercise_id"
    t.index ["exercise_id"], name: "index_liftings_on_exercise_id"
  end

  create_table "members", force: :cascade do |t|
    t.integer "ranking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.integer "group_id"
    t.index ["group_id"], name: "index_members_on_group_id"
    t.index ["username"], name: "index_members_on_username"
  end

  create_table "muscles", id: false, force: :cascade do |t|
    t.string "group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "content"
    t.string "username"
    t.string "actable_type"
    t.integer "actable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actable_type", "actable_id"], name: "index_posts_on_actable_type_and_actable_id"
    t.index ["username"], name: "index_posts_on_username"
  end

  create_table "standard_posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "targets", force: :cascade do |t|
    t.string "intensity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "username"
    t.string "bio"
    t.string "email"
    t.string "password"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workout_whens", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.integer "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workout_id"], name: "index_workout_whens_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_workouts_on_username"
  end

end

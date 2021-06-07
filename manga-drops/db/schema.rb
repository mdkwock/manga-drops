# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_01_225915) do

  create_table "chapters", force: :cascade do |t|
    t.integer "manga_id", null: false
    t.integer "vol"
    t.integer "chap"
    t.string "url"
    t.datetime "Upload_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["manga_id"], name: "index_chapters_on_manga_id"
  end

  create_table "mangas", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "latest_chapter"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_chapter_status", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "chapter_id", null: false
    t.boolean "read"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chapter_id"], name: "index_user_chapter_status_on_chapter_id"
    t.index ["user_id"], name: "index_user_chapter_status_on_user_id"
  end

  create_table "user_mangas", force: :cascade do |t|
    t.integer "manga_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["manga_id"], name: "index_user_mangas_on_manga_id"
    t.index ["user_id"], name: "index_user_mangas_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "chapters", "mangas"
  add_foreign_key "user_chapter_status", "chapters"
  add_foreign_key "user_chapter_status", "users"
  add_foreign_key "user_mangas", "mangas"
  add_foreign_key "user_mangas", "users"
end

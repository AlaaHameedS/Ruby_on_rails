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

ActiveRecord::Schema[7.0].define(version: 2022_11_14_144828) do
  create_table "authors", force: :cascade do |t|
    t.string "firstname", null: false
    t.string "lastname", null: false
    t.string "address", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address"], name: "index_authors_on_address"
    t.index ["firstname"], name: "index_authors_on_firstname"
    t.index ["lastname"], name: "index_authors_on_lastname"
  end

  create_table "books", force: :cascade do |t|
    t.integer "id_author", null: false
    t.string "title", null: false
    t.string "publisher", null: false
    t.string "year", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_author"], name: "index_books_on_id_author"
    t.index ["publisher"], name: "index_books_on_publisher"
    t.index ["title"], name: "index_books_on_title"
    t.index ["year"], name: "index_books_on_year"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "identifier", null: false
    t.string "greeting"
    t.integer "work_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "works", force: :cascade do |t|
    t.integer "user_id"
    t.string "work_name"
    t.string "work_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

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

ActiveRecord::Schema.define(version: 20160118094123) do

  create_table "answers", force: :cascade do |t|
    t.integer  "answer_no",          limit: 4
    t.text     "answer_image",       limit: 65535
    t.integer  "question_no",        limit: 4
    t.text     "answer_description", limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "polls", force: :cascade do |t|
    t.integer  "poll_no",          limit: 4
    t.string   "poll_name",        limit: 255
    t.text     "poll_description", limit: 65535
    t.datetime "poll_start_date"
    t.datetime "poll_finish_date"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "question_no",     limit: 4
    t.text     "question_header", limit: 65535
    t.integer  "poll_id",         limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "questions", ["poll_id"], name: "index_questions_on_poll_id", using: :btree

  add_foreign_key "questions", "polls"
end

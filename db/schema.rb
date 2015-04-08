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

ActiveRecord::Schema.define(version: 20150408054104) do

  create_table "admins", force: :cascade do |t|
    t.string   "username",   limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "basics", force: :cascade do |t|
    t.string   "emp_number",  limit: 255
    t.string   "emo_name",    limit: 255
    t.string   "emp_sex",     limit: 255
    t.datetime "emp_birth"
    t.string   "emp_card",    limit: 255
    t.string   "emp_phone",   limit: 255
    t.string   "emp_address", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "password",    limit: 255
  end

  create_table "laborages", force: :cascade do |t|
    t.string   "pay_month",    limit: 255
    t.string   "emp_number",   limit: 255
    t.integer  "pay_basic",    limit: 4
    t.integer  "pay_prize",    limit: 4
    t.integer  "pay_overtime", limit: 4
    t.integer  "pay_payable",  limit: 4
    t.integer  "pay_paymoney", limit: 4
    t.integer  "basic_id",     limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "laborages", ["basic_id"], name: "index_laborages_on_basic_id", using: :btree

  create_table "message_sets", force: :cascade do |t|
    t.integer  "private",    limit: 4
    t.integer  "sick",       limit: 4
    t.integer  "late",       limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "works", force: :cascade do |t|
    t.integer  "number",              limit: 4
    t.integer  "emp_number",          limit: 4
    t.integer  "emp_holiday",         limit: 4
    t.date     "emp_private_date"
    t.integer  "emp_private_money",   limit: 4
    t.date     "emp_lateleave"
    t.integer  "emp_lateleave_money", limit: 4
    t.integer  "basic_id",            limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "works", ["basic_id"], name: "index_works_on_basic_id", using: :btree

end

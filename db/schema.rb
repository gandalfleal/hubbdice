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

ActiveRecord::Schema.define(version: 20140930120939) do

  create_table "bets", force: true do |t|
    t.integer  "user_id"
    t.integer  "secret_id"
    t.decimal  "amount",      precision: 15, scale: 8
    t.decimal  "multiplier",  precision: 8,  scale: 4
    t.decimal  "game",        precision: 4,  scale: 2
    t.decimal  "roll",        precision: 4,  scale: 2
    t.string   "rolltype",                             default: "under"
    t.string   "client_seed"
    t.string   "server_seed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cold_storage", force: true do |t|
    t.string "mpk"
    t.string "fund_address"
  end

  create_table "secrets", force: true do |t|
    t.string   "secret"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                                           default: "", null: false
    t.string   "encrypted_password",                              default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "auth_token"
    t.string   "address"
    t.string   "encrypted_pkey"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.decimal  "balance",                precision: 15, scale: 8
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end

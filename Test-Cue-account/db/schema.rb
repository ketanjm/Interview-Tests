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

ActiveRecord::Schema.define(version: 20150826100019) do

  create_table "fixed_deposits", force: :cascade do |t|
    t.integer  "debit_account_number"
    t.float    "amount_deposit"
    t.string   "deposit_type"
    t.integer  "tenure_seposit_years"
    t.integer  "tenure_seposit_months"
    t.integer  "tenure_seposit_days"
    t.string   "pan"
    t.string   "maturity_proceeds"
    t.string   "mobile_number"
    t.string   "email"
    t.integer  "age"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end

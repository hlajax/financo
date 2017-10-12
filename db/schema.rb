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

ActiveRecord::Schema.define(version: 20171012211146) do

  create_table "accounts", force: :cascade do |t|
    t.string "name", limit: 45
    t.decimal "opening_balance", precision: 10, scale: 2, default: "0.0"
    t.decimal "current_balance", precision: 10, scale: 2, default: "0.0"
    t.string "additional_information"
    t.integer "currency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_accounts_on_currency_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name", limit: 45
    t.string "code", limit: 4
    t.string "sign", limit: 8
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expense_categories", force: :cascade do |t|
    t.string "name", limit: 45
    t.integer "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expense_transactions", force: :cascade do |t|
    t.integer "account_id"
    t.decimal "amount", precision: 10, scale: 2, default: "0.0"
    t.integer "currency_id"
    t.text "description"
    t.integer "payee_id"
    t.integer "expense_category_id"
    t.datetime "datetime"
    t.boolean "done", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_expense_transactions_on_account_id"
    t.index ["currency_id"], name: "index_expense_transactions_on_currency_id"
    t.index ["expense_category_id"], name: "index_expense_transactions_on_expense_category_id"
    t.index ["payee_id"], name: "index_expense_transactions_on_payee_id"
  end

  create_table "frequencies", force: :cascade do |t|
    t.string "name", limit: 16
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "from_accounts", force: :cascade do |t|
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_from_accounts_on_account_id"
  end

  create_table "income_categories", force: :cascade do |t|
    t.string "name", limit: 45
    t.integer "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "income_transactions", force: :cascade do |t|
    t.integer "account_id"
    t.decimal "amount", precision: 10, scale: 2, default: "0.0"
    t.integer "currency_id"
    t.text "description"
    t.integer "payee_id"
    t.integer "income_category_id"
    t.datetime "datetime"
    t.boolean "done", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_income_transactions_on_account_id"
    t.index ["currency_id"], name: "index_income_transactions_on_currency_id"
    t.index ["income_category_id"], name: "index_income_transactions_on_income_category_id"
    t.index ["payee_id"], name: "index_income_transactions_on_payee_id"
  end

  create_table "payees", force: :cascade do |t|
    t.string "name", limit: 45
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scheduled_expenses", force: :cascade do |t|
    t.integer "repeat", default: 1
    t.string "frequency", limit: 8
    t.integer "end"
    t.integer "expense_transaction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expense_transaction_id"], name: "index_scheduled_expenses_on_expense_transaction_id"
  end

  create_table "scheduled_incomes", force: :cascade do |t|
    t.integer "repeat", default: 1
    t.string "frequency", limit: 8
    t.integer "end"
    t.integer "income_transaction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["income_transaction_id"], name: "index_scheduled_incomes_on_income_transaction_id"
  end

  create_table "scheduled_transfers", force: :cascade do |t|
    t.integer "transfer_transaction_id"
    t.integer "frequency_id"
    t.integer "repeat", default: 1
    t.integer "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["frequency_id"], name: "index_scheduled_transfers_on_frequency_id"
    t.index ["transfer_transaction_id"], name: "index_scheduled_transfers_on_transfer_transaction_id"
  end

  create_table "to_accounts", force: :cascade do |t|
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_to_accounts_on_account_id"
  end

  create_table "transfer_transactions", force: :cascade do |t|
    t.integer "from_account_id"
    t.integer "to_account_id"
    t.decimal "amount", precision: 10, scale: 2, default: "0.0"
    t.text "description"
    t.integer "currency_id"
    t.datetime "datetime"
    t.boolean "done", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_transfer_transactions_on_currency_id"
    t.index ["from_account_id"], name: "index_transfer_transactions_on_from_account_id"
    t.index ["to_account_id"], name: "index_transfer_transactions_on_to_account_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

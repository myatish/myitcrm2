# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100809065313) do

  create_table "product_categories", :force => true do |t|
    t.string   "name"
    t.integer  "sub_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer  "supplier_id"
    t.string   "supplier_sku"
    t.string   "our_sku"
    t.string   "manufacturer"
    t.string   "description"
    t.string   "model"
    t.integer  "product_category_id"
    t.integer  "child_category_id"
    t.string   "warranty_info"
    t.string   "warranty_length"
    t.string   "warranty_unit"
    t.boolean  "taxable"
    t.integer  "tax_rate",            :precision => 10, :scale => 0
    t.integer  "cost_price",          :precision => 10, :scale => 0
    t.integer  "sell_price",          :precision => 10, :scale => 0
    t.integer  "mark_up",             :precision => 10, :scale => 0
    t.boolean  "active"
    t.integer  "weight",              :precision => 10, :scale => 0
    t.boolean  "discountable"
    t.integer  "disc_percent",        :precision => 10, :scale => 0
    t.integer  "disc_amount",         :precision => 10, :scale => 0
    t.string   "created_by"
    t.string   "edited_by"
    t.datetime "edited_at"
    t.integer  "qty_on_hand"
    t.integer  "qty_allocated"
    t.integer  "qty_available"
    t.integer  "qty_ordered"
    t.integer  "stocking_qty"
    t.boolean  "stocked_product"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", :force => true do |t|
    t.string   "business_name"
    t.string   "business_number"
    t.string   "business_slogan"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.text     "billing_address"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_zip"
    t.string   "billing_phone"
    t.string   "billing_fax"
    t.string   "billing_email"
    t.string   "default_credit_terms"
    t.integer  "default_credit_amount"
    t.string   "business_contact_name"
    t.string   "business_contact_phone"
    t.string   "business_contact_email"
    t.string   "default_from_email"
    t.string   "default_no_reply_email"
    t.text     "terms_and_conditions"
    t.text     "privacy_policy"
    t.text     "invoice_message"
    t.boolean  "enable_textarea_html_editor"
    t.boolean  "enable_google_calendar"
    t.boolean  "enable_google_maps"
    t.boolean  "enable_paymate"
    t.boolean  "enable_voucher"
    t.integer  "default_voucher_valid_days"
    t.string   "paymate_username"
    t.string   "paymate_password"
    t.integer  "paymate_transaction_fee"
    t.boolean  "enable_paypal"
    t.string   "paypal_username"
    t.integer  "paypal_transaction_fee"
    t.boolean  "enable_credit_card"
    t.boolean  "enable_direct_deposit"
    t.string   "direct_deposit_bank_number"
    t.string   "direct_deposit_bank_name"
    t.integer  "direct_deposit_bank_account"
    t.string   "direct_deposit_bank_account_name"
    t.string   "direct_deposit_instructions"
    t.boolean  "enable_cheque"
    t.string   "cheque_payable_to"
    t.integer  "default_tax"
    t.integer  "default_tax_name"
    t.boolean  "business_open_sunday"
    t.boolean  "business_open_monday"
    t.boolean  "business_open_tuesday"
    t.boolean  "business_open_wednesday"
    t.boolean  "business_open_thursday"
    t.boolean  "business_open_friday"
    t.boolean  "business_open_saturday"
    t.string   "business_open_sunday_from"
    t.string   "business_open_sunday_to"
    t.string   "business_open_monday_from"
    t.string   "business_open_monday_to"
    t.string   "business_open_tuesday_from"
    t.string   "business_open_tuesday_to"
    t.string   "business_open_wednesday_from"
    t.string   "business_open_wednesday_to"
    t.string   "business_open_thursday_from"
    t.string   "business_open_thursday_to"
    t.string   "business_open_friday_from"
    t.string   "business_open_friday_to"
    t.string   "business_open_saturday_from"
    t.string   "business_open_saturday_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "company_name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "credit_terms"
    t.integer  "credit_amount"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.text     "notes"
    t.boolean  "active"
    t.datetime "date_created"
    t.datetime "date_updated"
    t.integer  "parts_leadtime_days"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_id"
    t.string   "created_by"
    t.string   "edited_by"
    t.datetime "edited_at"
  end

  create_table "user_sessions", :force => true do |t|
    t.string "username"
    t.string "password"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "role"
    t.integer  "roles_mask"
    t.integer  "login_count",        :default => 0,    :null => false
    t.integer  "failed_login_count", :default => 0,    :null => false
    t.datetime "last_request_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "mobile"
    t.string   "fax"
    t.text     "notes"
    t.boolean  "active",             :default => true
    t.datetime "edited_at"
    t.string   "edited_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "created_by"
  end

end

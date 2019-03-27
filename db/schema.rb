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

ActiveRecord::Schema.define(version: 2019_03_27_092002) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_venues", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "date"
    t.integer "EventVenue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["EventVenue_id"], name: "index_events_on_EventVenue_id"
  end

  create_table "ticket_orders", force: :cascade do |t|
    t.integer "User_id"
    t.integer "TicketType_id"
    t.integer "total_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["TicketType_id"], name: "index_ticket_orders_on_TicketType_id"
    t.index ["User_id"], name: "index_ticket_orders_on_User_id"
  end

  create_table "ticket_types", force: :cascade do |t|
    t.integer "Event_id"
    t.integer "price"
    t.integer "Category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Category_id"], name: "index_ticket_types_on_Category_id"
    t.index ["Event_id"], name: "index_ticket_types_on_Event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
    t.string "password"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
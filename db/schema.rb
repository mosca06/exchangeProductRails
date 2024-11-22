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

ActiveRecord::Schema[7.2].define(version: 2024_11_20_215921) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "draft_items", force: :cascade do |t|
    t.bigint "draft_order_id", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["draft_order_id"], name: "index_draft_items_on_draft_order_id"
    t.index ["item_id"], name: "index_draft_items_on_item_id"
  end

  create_table "draft_orders", force: :cascade do |t|
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.bigint "products_supplier_id", null: false
    t.bigint "store_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["products_supplier_id"], name: "index_items_on_products_supplier_id"
    t.index ["store_id"], name: "index_items_on_store_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products_suppliers", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "supplier_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_products_suppliers_on_product_id"
    t.index ["supplier_id"], name: "index_products_suppliers_on_supplier_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "draft_items", "draft_orders"
  add_foreign_key "draft_items", "items"
  add_foreign_key "items", "products_suppliers"
  add_foreign_key "items", "stores"
  add_foreign_key "products_suppliers", "products"
  add_foreign_key "products_suppliers", "suppliers"
end

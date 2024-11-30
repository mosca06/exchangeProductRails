# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
products = [
  {
    name: 'maça',
    price: 1
  },
  {
    name: 'uva',
    price: 3
  },
  {
    name: 'manga',
    price: 2
  }
]

suppliers = [
  {
    name: 'turma da monica'
  },
  {
    name: 'ades'
  }
]

products_suppliers = [
  {
    product_id: 1,
    supplier_id: 1
  }
]

stores = [
  {
    name: 'lojinha 1'
  },
  {
    name: 'store 2'
  }
]

items = [
  {
    name: 'item 1',
    products_supplier_id: 1,
    store_id: 1
  }
]

users = [
  {
    name: 'user 1'
  }
]


draft_orders = [
  {
    total_price: 100.00,
    user_id: 1
  },
  {
    total_price: 10.00,
    user_id: 1
  },
  {
    total_price: 15.00,
    user_id: 1
  }
]

draft_items = [
  {
    draft_order_id: 1,
    item_id: 1
  }
]


Supplier.create(suppliers)
Product.create(products)
Product.all.each { |product| Supplier.all.sample.products << product }
Store.create(stores)
ProductsSupplier.all.each { |products_supplier| Store.all.sample.products_suppliers << products_supplier }
User.create(users)
DraftOrder.create(draft_orders)
DraftOrder.all.each { |draft_order|  Item.all.sample.draft_orders << draft_order }

class FetchUsersProductsQuery < OptionsQuery
  def query
    "
      SELECT DISTINCT
        users.id AS user_id,
        users.name AS user_name,
        products.name AS product_name,
        suppliers.name AS supplier_name
      FROM
          users
      JOIN
          draft_orders ON draft_orders.user_id = users.id
      JOIN
          draft_items ON draft_items.draft_order_id = draft_orders.id
      JOIN
          items ON items.id = draft_items.item_id
      JOIN
          products_suppliers ON products_suppliers.id = items.products_supplier_id
      JOIN
          products ON products.id = products_suppliers.product_id
      JOIN
          suppliers ON suppliers.id = products_suppliers.supplier_id
      ORDER BY
          users.name, products.name;
    "
  end
end
class FetchItemsOrdersOptionsQuery < OptionsQuery
  def query
    "
      SELECT items.id, items.name, 'item' AS table
      FROM items
      UNION
      SELECT draft_orders.id, draft_orders.total_price, 'draft_order' AS table
      FROM draft_orders
    "
  end
end


class FetchDraftItemsOptionsQuery < OptionsQuery
  def query
    "
      SELECT
        items.id,
        items.name,
        'item' AS table
      FROM
        items
      UNION
      SELECT
        draft_orders.id,
        users.name,
        'draft_order' AS table
      FROM
        draft_orders
      JOIN
        users ON users.id = draft_orders.user_id
    "
  end
end

class FetchItemsOptionsQuery < OptionsQuery
  def query
    "
    SELECT
        products_suppliers.id,
        CONCAT(products.name, ' - ', suppliers.name) AS name,
        'products_supplier' AS table
    FROM
        products_suppliers
    JOIN
        products ON products.id = products_suppliers.product_id
    JOIN
        suppliers ON suppliers.id = products_suppliers.supplier_id
    UNION
    SELECT
        stores.id,
        stores.name,
        'store' AS table
    FROM
        stores
    ;
    "
  end
end

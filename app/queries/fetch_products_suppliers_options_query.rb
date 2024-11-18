class FetchProductsSuppliersOptionsQuery < OptionsQuery
  def query
    "
      SELECT products.id, products.name, 'product' AS table
      FROM products
      UNION
      SELECT suppliers.id, suppliers.name, 'supplier' AS table
      FROM suppliers
    "
  end
end


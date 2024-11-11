require "ostruct"
class FetchOptionsQuery

    def self.call
      new.call
    end

    def call
      run
    end

    private

    def run
      result = ActiveRecord::Base.connection.execute(
        ApplicationRecord.sanitize_sql_array(
          [ query ]
        )
      )
      result.map { |item| OpenStruct.new(**item.deep_symbolize_keys) }
    end

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


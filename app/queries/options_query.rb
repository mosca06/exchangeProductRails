require "ostruct"

class OptionsQuery
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
end

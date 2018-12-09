require "google/cloud/bigquery"

class Gsql
  bigquery = Google::Cloud::Bigquery.new
  @db = bigquery.dataset 'instacart'

  def self.query str
    data = @db.query  str
    ActiveRecord::Result.new data.first.keys, data.map(&:values)
  end

end

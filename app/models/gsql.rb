require "google/cloud/bigquery"

class Gsql
  bigquery = Google::Cloud::Bigquery.new
  @db = bigquery.dataset 'instacart'

  def self.query str
    @db.query  str
  end

end

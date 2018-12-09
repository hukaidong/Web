# Load the Rails application.
require_relative 'application'

ENV["BIGQUERY_PROJECT"]               = "complete-treat-224523"
ENV["BIGQUERY_CREDENTIALS"]           = "storage/cred.json"
ENV["GOOGLE_APPLICATION_CREDENTIALS"] = "storage/cred.json"

# Initialize the Rails application.
Rails.application.initialize!

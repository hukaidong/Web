# Load the Rails application.
require_relative 'application'

ENV["GOOGLE_APPLICATION_CREDENTIALS"] = ENV["HOME"] + "/cred.json"
ENV["BIGQUERY_PROJECT"]               = "complete-treat-224523"
ENV["BIGQUERY_CREDENTIALS"]           = ENV["HOME"] + "/cred.json"

# Initialize the Rails application.
Rails.application.initialize!

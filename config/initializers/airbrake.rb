Airbrake.configure do |config|
  config.api_key = ENV["AIRBRAKE_API_KEY"]
  config.ignore << PG::ConnectionBad
end

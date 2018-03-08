Mailjet.configure do |config|
  config.api_key = ENV['MAILJET_USERNAME']
  config.secret_key = ENV['MAILJET_PASSWORD']
  config.default_from = 'contact@sambadanfakha.com'
end
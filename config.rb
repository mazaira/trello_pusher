require 'trello'
require 'dotenv'
ENV['PUSHER_PATH'].present? ? Dotenv.load("#{ENV['PUSHER_PATH']}/.env") : Dotenv.load

Trello.configure do |config|
  config.developer_public_key = ENV['API_KEY']
  config.member_token = ENV['MEMBER_TOKEN']
end

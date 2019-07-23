# frozen_string_literal: true

Hubspot.configure({
  hapikey: ENV['HUBSPOT_API_KEY'],
  base_url: "https://api.hubapi.com",
  portal_id: ENV['PORTAL_ID'],
  logger: Logger.new(nil),
  access_token: ['ACCESS_TOKEN']
  client_id: ENV['CLIENT_ID'],
  client_secret: ENV['CLIENT_SECRET'],
  read_timeout: nil, # or :timeout to set read_timeout and open_timeout
  open_timeout: nil,
})

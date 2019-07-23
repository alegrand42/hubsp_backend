# frozen_string_literal: true

# Hubspot Contact Add Async
class HubspotWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(user_email)
    Hubspot::Contact.create_or_update!(user_email)
  end
end

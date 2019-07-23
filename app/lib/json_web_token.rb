# frozen_string_literal: true

# Json Web Token
class JsonWebToken
  H_SECRET = Rails.application.secrets.secret_key_base

  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, H_SECRET, 'HS256')
  end

  def self.decode(token)
    body = JWT.decode(token, H_SECRET, true, algorithm: 'HS256')[0]
    HashWithIndifferentAccess.new body
  rescue JWT::ExpiredSignature, JWT::VerificationError => e
    raise ExceptionHandler::ExpiredSignature, e.message
  end
end

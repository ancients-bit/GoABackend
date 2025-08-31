Devise.setup do |config|
  config.jwt do |jwt|
    jwt.secret = Rails.application.credentials.secret_key_base
    jwt.dispatch_requests = [
      ['POST', %r{^/admin/sessions$}]
    ]
    jwt.revocation_requests = [
      ['DELETE', %r{^/admin/sessions$}]
    ]
    jwt.expiration_time = 30.minutes.to_i
  end
end


Devise.setup do |config|
  config.jwt do |jwt|
    jwt.secret = Rails.application.credentials.secret_key_base
    
    # JWT dispatch (when logging in)
    jwt.dispatch_requests = [
      ['POST', %r{^/admin/sessions$}]
    ]
    
    # JWT revocation (when logging out)
    jwt.revocation_requests = [
      ['DELETE', %r{^/admin/sessions$}]
    ]
    
    # JWT authentication (for all admin routes)
    jwt.request_formats = {
      admin_user: [:json]
    }
    
    # Add this line to enable JWT authentication
    jwt.dispatch_requests << ['GET', %r{^/admin/}]
    
    jwt.expiration_time = 30.minutes.to_i
  end
end
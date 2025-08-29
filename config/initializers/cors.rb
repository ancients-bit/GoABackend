Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    allowed_origins = ENV.fetch('CORS_ORIGINS', 'http://localhost:4000,http://127.0.0.1:4000').split(',').map(&:strip)
    origins(*allowed_origins)
    resource '*',
      headers: :any,
      methods: [:get, :post, :patch, :put, :delete, :options, :head],
      expose: ['Authorization'],
      credentials: true
  end
end

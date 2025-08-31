Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    allowed_origins = ENV.fetch('CORS_ORIGINS', 'http://localhost:4000,https://gardenofancients.com').split(',').map(&:strip)
    origins(*allowed_origins)
    resource '*',
      headers: :any,
      methods: [:get, :post, :patch, :put, :delete, :options, :head],
      expose: ['Authorization', 'Content-Type', 'X-Requested-With', 'Set-Cookie'],
      credentials: true,
      max_age: 86400
  end
end

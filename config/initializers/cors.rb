Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:4000' # Change to your frontend's port!
    resource '*',
      headers: :any,
      methods: [:get, :post, :patch, :put, :delete, :options, :head],
      credentials: true
  end
end

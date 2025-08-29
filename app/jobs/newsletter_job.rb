class ::NewsletterJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    # No-op for now; implement newsletter delivery when ready
  end
end



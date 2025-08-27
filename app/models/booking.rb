class Booking < ApplicationRecord
  # Constants for status values
  STATUS_PENDING  = 0
  STATUS_APPROVED = 1
  STATUS_REJECTED = 2

  # Set default status before creation
  before_create :set_default_status

  # Custom status helper methods
  def pending?
    status == STATUS_PENDING
  end

  def approved?
    status == STATUS_APPROVED
  end

  def rejected?
    status == STATUS_REJECTED
  end

  def status_label
    case status
    when STATUS_PENDING then 'pending'
    when STATUS_APPROVED then 'approved'
    when STATUS_REJECTED then 'rejected'
    else 'unknown'
    end
  end

  private

  def set_default_status
    self.status ||= STATUS_PENDING
  end
end

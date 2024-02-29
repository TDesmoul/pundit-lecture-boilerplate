class Restaurant < ApplicationRecord
  belongs_to :user

  STATUSES = %w[pending published archived].freeze

  validates :status, inclusion: { in: STATUSES }
end

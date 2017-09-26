class ScheduledTransfer < ApplicationRecord
  belongs_to :transfer_transaction
  belongs_to :frequency
end

class TransferTransaction < ApplicationRecord
  belongs_to :from_account
  belongs_to :to_account
  belongs_to :currency

  has_one :scheduled_transfer
end

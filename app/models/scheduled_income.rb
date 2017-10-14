class ScheduledIncome < ApplicationRecord
  belongs_to :income_transaction
  belongs_to :frequency
end

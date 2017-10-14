class ScheduledExpense < ApplicationRecord
  belongs_to :expense_transaction
  belongs_to :frequency
end

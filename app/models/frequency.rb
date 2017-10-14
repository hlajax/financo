class Frequency < ApplicationRecord
  has_many :scheduled_incomes
  has_many :scheduled_expenses
  has_many :scheduled_transfers
end

class IncomeTransaction < ApplicationRecord
  belongs_to :account
  belongs_to :currency
  belongs_to :payee
  belongs_to :income_category

  has_one :scheduled_income
end

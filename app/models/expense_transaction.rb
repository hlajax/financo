class ExpenseTransaction < ApplicationRecord
  belongs_to :account
  belongs_to :currency
  belongs_to :payee
  belongs_to :expense_category
end

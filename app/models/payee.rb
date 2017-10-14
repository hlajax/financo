class Payee < ApplicationRecord
  has_many :expense_transactions
  has_many :income_transactions
end

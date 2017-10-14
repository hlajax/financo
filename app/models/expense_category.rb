class ExpenseCategory < ApplicationRecord
  validates_presence_of :name

  has_many :expense_transactions
end

class Currency < ApplicationRecord
  validates_presence_of :name, :code, :sign

  has_many :accounts
  has_many :expense_transactions
  has_many :income_transactions
  has_many :transfer_transactions
end

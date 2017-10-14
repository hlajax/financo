class Account < ApplicationRecord
  belongs_to :currency
  has_many :income_transactions
  has_many :expense_transactions
  has_one :user
end

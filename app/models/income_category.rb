class IncomeCategory < ApplicationRecord
  validates_presence_of :name

  has_many :income_transactions
end

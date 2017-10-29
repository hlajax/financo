class Backoffice::TransactionsController < BackofficeController
  def index
    @income_transaction = IncomeTransaction.new
    @income_transactions = IncomeTransaction.all
  end
end

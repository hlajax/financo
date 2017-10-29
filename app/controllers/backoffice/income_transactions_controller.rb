class Backoffice::IncomeTransactionsController < BackofficeController
  def index
  end

  def create
    @income_transaction = IncomeTransaction.new(params_income_transaction)
  end

  private

  def params_income_transaction
    params.require(:income_transaction).permit(:account_id, :amount, :currency_id, :description, :payee_id, :income_category_id, :datetime, :done)
  end
end

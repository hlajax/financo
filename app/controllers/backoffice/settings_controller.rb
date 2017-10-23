class Backoffice::SettingsController < BackofficeController
  before_action :set_currency, only: [:edit, :update]

  def index
    @currencies = Currency.all
    @expense_categories = ExpenseCategory.all
    @income_categories = IncomeCategory.all
    @payees = Payee.all
    @accounts = Account.all
    @currency = Currency.new
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end
end

class Backoffice::SettingsController < BackofficeController

  def index
    @expense_categories = ExpenseCategory.all
    @income_categories = IncomeCategory.all
  end

  def create
    #code
  end

  def new
    #code
  end

  def edit
    #code
  end

  def update
    #code
  end
end

class Backoffice::SettingsController < BackofficeController

  def index
    @expense_categories = ExpenseCategory.all
    @income_categories = IncomeCategory.all
  end
end

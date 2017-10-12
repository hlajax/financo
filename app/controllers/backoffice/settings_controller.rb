class Backoffice::SettingsController < ApplicationController
  before_action :authenticate_user!

  layout "backoffice"

  def index
    @expense_categories = ExpenseCategory.all
    @income_categories = IncomeCategory.all
  end
end

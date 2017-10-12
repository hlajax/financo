class Backoffice::Settings::ExpenseCategoriesController < BackofficeController
  def index
  end

  def create
    @expense_category = ExpenseCategory.new(params_expense_category)
    if @expense_category.save
      redirect_to backoffice_settings_path, notice: "The (#{@expense_category.name}) expense category was successfully created"
    else
      render :new
    end
  end

  def new
    @expense_category = ExpenseCategory.new
  end

  def edit
    #code
  end

  def update
    #code
  end

  private

  def params_expense_category
    params.require(:expense_category).permit(:name)
  end
end

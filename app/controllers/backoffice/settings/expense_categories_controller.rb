class Backoffice::Settings::ExpenseCategoriesController < BackofficeController
  before_action :set_expense_category, only: [:edit, :update]

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
    set_expense_category
  end

  def update
    set_expense_category
    if @expense_category.update(params_expense_category)
      redirect_to backoffice_settings_path, notice: "The (#{@expense_category.name}) expense category was successfully updated"
    else
      render :edit
    end
  end

  private

  def set_expense_category
    @expense_category = ExpenseCategory.find(params[:id])
  end

  def params_expense_category
    params.require(:expense_category).permit(:name)
  end
end

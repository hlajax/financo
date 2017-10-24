class Backoffice::Settings::IncomeCategoriesController < BackofficeController
  before_action :set_income_category, only: [:edit, :update]

  def index
  end

  def create
    @income_category = IncomeCategory.new(params_income_category)
    if @income_category.save
      redirect_to backoffice_settings_path + "#collapsible-categories", notice: "The (#{@income_category.name}) income category was successfully created"
    else
      render :new
    end
  end

  def new
    @income_category = IncomeCategory.new
  end

  def edit
    set_income_category
  end

  def update
    set_income_category
    if @income_category.update(params_income_category)
      redirect_to backoffice_settings_path + "#collapsible-categories", notice: "The (#{@income_category.name}) income category was successfully updated"
    else
      render :edit
    end
  end

  private

  def set_income_category
    @income_category = IncomeCategory.find(params[:id])
  end

  def params_income_category
    params.require(:income_category).permit(:name)
  end
end

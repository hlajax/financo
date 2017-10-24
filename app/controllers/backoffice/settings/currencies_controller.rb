class Backoffice::Settings::CurrenciesController < BackofficeController
  before_action :set_currency, only: [:edit, :update]

  def index
  end

  def create
    @currency = Currency.new(params_currency)
    if @currency.save
      redirect_to backoffice_settings_path + "#collapsible-currencies", notice: "The (#{@currency.name}) currency was successfully created"
    else
      render :new
    end
  end

  def new
    @currency = Currency.new
  end

  def edit
    set_currency
  end

  def update
    set_currency
    if @currency.update(params_currency)
      redirect_to backoffice_settings_path + "#collapsible-currencies", notice: "The (#{@currency.name}) currency was successfully updated"
    else
      render :edit
    end
  end

  private

  def set_currency
    @currency = Currency.find(params[:id])
  end

  def params_currency
    params.require(:currency).permit(:name, :code, :sign)
  end
end

class Backoffice::AccountsController < ApplicationController
  # Alternative fix for correct not rendering
  layout "backoffice"

  before_action :set_account, only: [:edit, :update]

  def index
  end

  def new
    @account = Account.new
  end

  def edit
    set_account
  end

  def create
    @account = Account.new(params_account)
    if @account.save
      redirect_to backoffice_settings_path + "#collapsible-accounts", notice: "The (#{@account.name}) was successfully created"
    else
      render :new
    end
  end

  def update
    set_account
    if @account.update
      redirect_to backoffice_settings_path + "#collapsible-accounts", notice: "The (#{@account.name}) was successfully updated"
    else
      render :edit
    end
  end

  private

  def set_account
    @account = Account.find(params[:id])
  end

  def params_account
    params.require(:account).permit(:name, :opening_balance, :current_balance, :additional_information, :currency_id)
  end
end

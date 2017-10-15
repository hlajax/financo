class Backoffice::Settings::PayeesController < ApplicationController
  # Alternative fix for correct not rendering
  layout "backoffice"

  before_action :set_payee, only: [:edit, :update]

  def index
  end

  def new
    @payee = Payee.new
  end

  def edit
    set_payee
  end

  def create
    @payee = Payee.new(params_payee)
    if @payee.save
      redirect_to backoffice_settings_path, notice: "The (#{@payee.name}) was successfully created"
    else
      render :new
    end
  end

  def update
    set_account
    if @account.save
      redirect_to backoffice_settings_path, notice: "The (#{@payee.name}) was successfully updated"
    else
      render :edit
    end
  end

  private

  def set_payee
    @payee = Payee.find(params[:id])
  end

  def params_payee
    params.require(:payee).permit(:name)
  end
end

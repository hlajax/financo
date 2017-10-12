class Backoffice::SettingsController < ApplicationController
  before_action :authenticate_user!

  layout "backoffice"

  def index
  end
end

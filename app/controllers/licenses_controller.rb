# app/controllers/licenses_controller.rb
class LicensesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @licenses = License.where(status: "pending")
  end

  def update
    @license = License.find(params[:id])
    if @license.update(license_params)
      redirect_to licenses_path, notice: "License updated."
    else
      render :edit
    end
  end

  private

  def license_params
    params.require(:license).permit(:status)
  end
end

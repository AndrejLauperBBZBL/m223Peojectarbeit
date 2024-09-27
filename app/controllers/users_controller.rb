class UsersController < ApplicationController
  before_action :require_logged_out, only: [:new]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.motorcycles.new(motorbike_type_id: params[:motorbike_type_id])

    if @user.save
      redirect_to login_path, notice: "Account created successfully! Please log in."
    else
      # Wenn der Benutzer nicht gespeichert werden konnte, zurück zum Formular
      flash.now[:alert] = "There was an error with your registration. Please check the form and try again."
      render :new
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
  end

  private

  # Nur die notwendigen Parameter für den Benutzer zulassen
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :role, :license_front, :license_back)
  end
end

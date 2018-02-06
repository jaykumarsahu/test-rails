class Api::V1::RegistrationsController < ApplicationController

  skip_before_action :authenticate_request!, only: [:create]

  def create
    user = User.new(user_params)

    if user.password == user.password_confirmation && user.save
      msg = "User has been signed up successfully."
      render json: {
        status: "SUCCESS",
        message: msg,
        user: user.as_json(only: [:first_name, :last_name, :email, :phone, :address, :city, :state, :zip, :country])
      }, status: :ok
    else
      render json: { status: "FAILED", error: user.errors.full_messages }, status: :ok
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :phone,
      :address,
      :city,
      :state,
      :zip,
      :country,
      :password,
      :password_confirmation
    )
  end
end

# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @user = User.includes(:email_addresses, :addresses).first
  end

  def edit
    @user = User.includes(:email_addresses, :addresses).first
  end

  def update
    email_address_index = params[:user][:primary_email_address]
    params[:user][:email_addresses_attributes][email_address_index][:primary] = true

    address_index = params[:user][:primary_address]
    params[:user][:addresses_attributes][address_index][:default] = true

    @user = User.first
    respond_to do |format|
      if @user.update(user_params)
        flash[:notice] = 'User was successfully updated.'
        format.html { redirect_to(users_path) }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(
      email_addresses_attributes: %i[
        id
        email
        primary
      ],
      addresses_attributes: %i[
        id
        data
        default
      ]
    )
  end
end

class UsersController < ApplicationController

  def show
    @user = User.includes(:email_addresses, :addresses).find_by_name("John Smith")
  end

  def edit
  end

  def update
  end
  
end

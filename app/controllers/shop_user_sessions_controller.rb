class ShopUserSessionsController < ApplicationController
  def new
  end

  def create

    if @shop_user = login(params[:shop_user_session][:email], params[:shop_user_session][:password])
      redirect_to shops_path, notice: 'Login successful'
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(:shop_users, notice: 'Logged out!')
  end

end

class SessionsController < ApplicationController
  def new
  end

  def create
    if @user = login(params[:session][:email], params[:session][:password])
      redirect_to shops_path, notice: 'Login successful'
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: 'Logged out!'
  end

end

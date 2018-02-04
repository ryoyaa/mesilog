class MenusController < ApplicationController
  def new
    @menu = Menu.new
  end

  def create
      @menu = Menu.new(menu_params)
    if current_user.shop_user?

      @menu.user_id = current_user.id
      @menu.shop_id = params[:menu][:shop_id]
      if @menu.save
        redirect_to shops_path, notice: 'メニューの登録が完了しました'
      else
        redirect_to new_menu_path, notice: 'メニューの登録に失敗しました'
      end
    else
      flash.now[:alert] = "ショップユーザーではありません"
      render :new
    end
  end

  private
  def menu_params
    params.require(:menu).permit(:name)
  end

end

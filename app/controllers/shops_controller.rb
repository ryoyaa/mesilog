class ShopsController < ApplicationController
  def new
    @shop = Shop.new
  end


  def create
    if  current_user.shop_user?
      @shop =  Shop.new(shop_params)
      @shop.user_id = current_user.id

      if @shop.save
        redirect_to shops_path, notice: '投稿に成功しました'
      else
        flash.now[:alert] = "投稿に失敗しました"
        render :new
      end
    else
      flash.now[:alert] = "ショップユーザーではありません"
      render :new
    end

  end

  def index
    @shops = Shop.all
  end





  private
  def shop_params
    params.require(:shop).permit(:name, :image, :description)
  end

end

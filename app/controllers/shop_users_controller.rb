
 class ShopUsersController < ApplicationController
   def new
     @shop_user = User.new
   end

   def create

     @shop_user = User.new(shop_user_params)
     @shop_user.role = 'shop_user'

     if @shop_user.save
       redirect_to shops_path, notice: '登録が完了しました'
     else
       flash.now[:alert] = "登録に失敗しました"
       render :new
     end
   end

   private
   def shop_user_params
     params.require(:user).permit(:name, :email, :password, :password_confirmation)
   end
end

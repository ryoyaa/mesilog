class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if current_user.normal_user?
      @review.user_id = current_user.id
      @review.shop_id = params[:review][:shop_id]
      if @review.save
        redirect_to shops_path, notice: 'レビューの登録が完了しました'
      else
        redirect_to new_review_path , notice: 'レビューの登録が失敗しました'
      end
    else
      flash.now[:alert] = "ユーザーではありません"
      render :new
    end
  end

    private
    def review_params
      params.require(:review).permit(:content)
    end

end

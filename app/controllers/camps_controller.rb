class CampsController < ApplicationController
  def index
    @camps = Camp.all.order("created_at DESC")
  end

  def new
    @camp = Camp.new
  end

  def create
    @camp = Camp.new(camp_params)
    if @camp.save
      redirect_to action: :index
    else
      render :new
    end
  end
  
  def show
    @camp = Camp.find(params[:id])
    @comment = Comment.new
    @comments = @camp.comments.includes(:user)
  end
  
  def edit
    @camp = Camp.find(params[:id])
    unless user_signed_in? && current_user.id == @camp.user_id
      redirect_to action: :index
    end
  end

  def update
    @camp = Camp.find(params[:id])
    if @camp.update(camp_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    @camp = Camp.find(params[:id])
    if user_signed_in? && current_user.id == @camp.user_id
      @camp.destroy
      redirect_to action: :index
    end
  end

  def search
    @camps = Camp.search(params[:keyword]).order("created_at DESC")
  end

  private
  def camp_params
    params.require(:camp).permit(:image, :name, :text, :prefecture_id).merge(user_id: current_user.id)
  end
end
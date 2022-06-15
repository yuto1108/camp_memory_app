class CampsController < ApplicationController
  def index
    @camps = Camp.all
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
  end

  private
  def camp_params
    params.require(:camp).permit(:image, :name, :text, :prefecture_id).merge(user_id: current_user.id)
  end
end
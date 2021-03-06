class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @camps = @user.camps.order("created_at DESC")
    @following_users = @user.following_user
    @follower_users = @user.follower_user
  end

  def followeds
    user = User.find(params[:id])
    @users = user.following_user
  end
  
  def followers
    user = User.find(params[:id])
    @users = user.follower_user
  end

end

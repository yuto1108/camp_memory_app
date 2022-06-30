class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to camp_path(@comment.camp.id)
    else
      @camp = @comment.camp
      @comments = @camp.comments
      render "camp/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, camp_id: params[:camp_id])
  end
end
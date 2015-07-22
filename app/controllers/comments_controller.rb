class CommentsController < ApplicationController

  before_filter :authenticate_user!

  before_filter :find_hotel
  
  def create
    @comment = @hotel.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to hotel_path(@hotel)
  end

  def destroy
    @comment = @hotel.comments.find(params[:id])
    @comment.destroy
    redirect_to hotel_path(@hotel)
  end

  private
    def comment_params
      params.require(:comment).permit(:user, :msg, :rate)
    end

  private
    def find_hotel   
      @hotel = Hotel.find(params[:hotel_id])
    end

end

class FriendsController < ApplicationController
    before_action :set_friend, only: [:show, :edit, :update, :destroy]

  # # GET /friends
  # # GET /friends.json
  # def index
  #   @friends = Friend.all
  # end

  # # GET /friends/1
  # # GET /friends/1.json
  # def show
  # end

  # # GET /friends/new
  # def new
  #   @friend = Friend.new
  # end

  # # GET /friends/1/edit
  # def edit
  # end

  # POST /friends
  # POST /friends.json
  def create
    user = User.find(params[:followed_id])
    current_user.follow(user)
    redirect_to user
  end

  # DELETE /friends/1
  # DELETE /friends/1.json
  def destroy
    user = Friend.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to user
  end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_friend
  #     @friend = Friend.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def friend_params
  #     params.fetch(:friend, {})
  #   end
end

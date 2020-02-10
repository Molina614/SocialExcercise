# Created 7/22/2019 by Nick Hackman
# Description: Controller for Standard Post
class GroupPostsController < ApplicationController
  before_action :set_group_post, only: %i[show destroy]

  # GET /group_posts/:id
  # GET /group_posts/:id.json
  def show
    @group_post = GroupPost.find params[:id]
  end

  # GET /group_posts/new
  def new
    @group_post = GroupPost.new
  end

  # POST /group_posts
  # POST /group_posts.json
  def create
    params = group_post_params
    params[:username] = current_user.username
    @group_post = GroupPost.new params
    respond_to do |format|
      if @group_post.save
        format.html { redirect_to @group_post, notice: 'Group post was successfully created.' }
        format.json { render :show, status: :created, location: @group_post }
      else
        format.html { render :new }
        format.json { render json: @group_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_posts/:id
  # DELETE /group_posts/:id.json
  def destroy
    @group_post.destroy
    respond_to do |format|
      format.html { redirect_to group_posts_url, notice: 'Group post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_group_post
    @group_post = GroupPost.find params[:id]
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def group_post_params
    params.fetch(:group_post, {}).permit :content, :comments
  end
end

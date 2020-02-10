# Created 7/22/2019 by Nick Hackman
# Description: Controller for Standard Post
class StandardPostsController < ApplicationController
  before_action :set_standard_post, only: %i[show destroy]
  # before_action :authenticate_user!

  # GET /standard_posts
  # GET /standard_posts.json
  def index
    @standard_posts = StandardPost.all
  end

  # GET /standard_posts/1
  # GET /standard_posts/1.json
  def show
    @standard_post = StandardPost.find params[:id]
  end

  # GET /standard_posts/new
  def new
    @standard_post = StandardPost.new
  end

  # POST /standard_posts
  # POST /standard_posts.json
  def create
    params = standard_post_params
    params[:username] = current_user.username
    @standard_post = StandardPost.new params

    respond_to do |format|
      if @standard_post.save
        format.html { redirect_to @standard_post, notice: 'Standard post was successfully created.' }
        format.json { render :show, status: :created, location: @standard_post }
      else
        format.html { render :new }
        format.json { render json: @standard_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standard_posts/:id
  # DELETE /standard_posts/:id.json
  def destroy
    @standard_post.destroy
    respond_to do |format|
      format.html { redirect_to standard_posts_url, notice: 'Standard post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_standard_post
    @standard_post = StandardPost.find params[:id]
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def standard_post_params
    params.fetch(:standard_post).permit :content
  end
end

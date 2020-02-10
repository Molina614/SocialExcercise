# Created 7/20/2019 by Nick Hackman
# Description: Controller for Post
class PostsController < ApplicationController
  before_action :set_post, only: %i[edit update]

  # GET /posts
  # GET /posts.json
  def index
    @posts = []
    Post.all.each do |post|
      @posts << (post.actable_type == 'GroupPost' ? GroupPost.find(post.actable_id) : StandardPost.find(post.actable_id))
    end
  end

  # GET /posts/:id/edit
  def edit
    @post = Post.find params[:id]
  end

  # PATCH/PUT /posts/:id
  # PATCH/PUT /posts/:id.json
  def update
    respond_to do |format|
      if @post.update post_params
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find params[:id]
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.fetch(:post, {}).permit :content, :username
  end
end

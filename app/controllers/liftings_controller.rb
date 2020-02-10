class LiftingsController < ApplicationController
  before_action :set_lifting, only: [:show, :edit, :update, :destroy]

  # GET /liftings
  # GET /liftings.json
  def index
    @liftings = Lifting.all
  end

  # GET /liftings/1
  # GET /liftings/1.json
  def show
  end

  # GET /liftings/new
  def new
    @lifting = Lifting.new
  end

  # GET /liftings/1/edit
  def edit
  end

  # POST /liftings
  # POST /liftings.json
  def create
    params = lifting_params
    params[:author] = current_user.username 
    @lifting = Lifting.new(params)

    respond_to do |format|
      if @lifting.save
        format.html { redirect_to @lifting, notice: 'Lifting was successfully created.' }
        format.json { render :show, status: :created, location: @lifting }
      else
        format.html { render :new }
        format.json { render json: @lifting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liftings/1
  # PATCH/PUT /liftings/1.json
  def update
    respond_to do |format|
      if @lifting.update(lifting_params)
        format.html { redirect_to @lifting, notice: 'Lifting was successfully updated.' }
        format.json { render :show, status: :ok, location: @lifting }
      else
        format.html { render :edit }
        format.json { render json: @lifting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liftings/1
  # DELETE /liftings/1.json
  def destroy
    @lifting.destroy
    respond_to do |format|
      format.html { redirect_to liftings_url, notice: 'Lifting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lifting
      @lifting = Lifting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lifting_params
      params.fetch(:lifting, {}).permit :weight, :name, :reps, :set, :description, :author
    end
end

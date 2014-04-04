class WheelsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_wheel, only: [:show, :edit, :update, :destroy]

  # GET /wheels
  # GET /wheels.json
  def index
    @wheels = Wheel.all
  end

  # GET /wheels/1
  # GET /wheels/1.json
  def show
  end

  # GET /wheels/new
  def new
    @wheel = Wheel.new
  end

  # GET /wheels/1/edit
  def edit
  end

  # POST /wheels
  # POST /wheels.json
  def create
    @wheel = Wheel.new(wheel_params)

    respond_to do |format|
      if @wheel.save
        format.html { redirect_to @wheel, notice: 'Wheel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wheel }
      else
        format.html { render action: 'new' }
        format.json { render json: @wheel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wheels/1
  # PATCH/PUT /wheels/1.json
  def update
    respond_to do |format|
      if @wheel.update(wheel_params)
        format.html { redirect_to @wheel, notice: 'Wheel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wheel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wheels/1
  # DELETE /wheels/1.json
  def destroy
    @wheel.destroy
    respond_to do |format|
      format.html { redirect_to wheels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wheel
      @wheel = Wheel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wheel_params
      params.require(:wheel).permit(:car_id)
    end
end

class WindowsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_window, only: [:show, :edit, :update, :destroy]

  # GET /windows
  # GET /windows.json
  def index
    @windows = Window.all
  end

  # GET /windows/1
  # GET /windows/1.json
  def show
  end

  # GET /windows/new
  def new
    @window = Window.new
  end

  # GET /windows/1/edit
  def edit
  end

  # POST /windows
  # POST /windows.json
  def create
    @window = Window.new(window_params)

    respond_to do |format|
      if @window.save
        format.html { redirect_to @window, notice: 'Window was successfully created.' }
        format.json { render action: 'show', status: :created, location: @window }
      else
        format.html { render action: 'new' }
        format.json { render json: @window.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /windows/1
  # PATCH/PUT /windows/1.json
  def update
    respond_to do |format|
      if @window.update(window_params)
        format.html { redirect_to @window, notice: 'Window was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @window.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /windows/1
  # DELETE /windows/1.json
  def destroy
    @window.destroy
    respond_to do |format|
      format.html { redirect_to windows_url }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @window.vote voter: current_user, vote: direction

    redirect_to index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_window
      @window = Window.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def window_params
      params[:window]
    end
end

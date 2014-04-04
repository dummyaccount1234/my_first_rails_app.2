class ComboPacksController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_combo_pack, only: [:show, :edit, :update, :destroy]

  # GET /combo_packs
  # GET /combo_packs.json
  def index
    @combo_packs = ComboPack.all
  end

  # GET /combo_packs/1
  # GET /combo_packs/1.json
  def show
  end

  # GET /combo_packs/new
  def new
    @combo_pack = ComboPack.new
  end

  # GET /combo_packs/1/edit
  def edit
  end

  # POST /combo_packs
  # POST /combo_packs.json
  def create
    @combo_pack = ComboPack.new(combo_pack_params)

    respond_to do |format|
      if @combo_pack.save
        format.html { redirect_to @combo_pack, notice: 'Combo pack was successfully created.' }
        format.json { render action: 'show', status: :created, location: @combo_pack }
      else
        format.html { render action: 'new' }
        format.json { render json: @combo_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combo_packs/1
  # PATCH/PUT /combo_packs/1.json
  def update
    respond_to do |format|
      if @combo_pack.update(combo_pack_params)
        format.html { redirect_to @combo_pack, notice: 'Combo pack was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @combo_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combo_packs/1
  # DELETE /combo_packs/1.json
  def destroy
    @combo_pack.destroy
    respond_to do |format|
      format.html { redirect_to combo_packs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combo_pack
      @combo_pack = ComboPack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def combo_pack_params
      params.require(:combo_pack).permit(:user_id)
    end
end

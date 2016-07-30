class EmcsController < ApplicationController
  before_action :set_emc, only: [:show, :edit, :update, :destroy]

  # GET /emcs
  # GET /emcs.json
  def index
    @emcs = Emc.all
	@emcs_count = Emc.count
  end

  # GET /emcs/1
  # GET /emcs/1.json
  def show
  end

  # GET /emcs/new
  def new
    @emc = Emc.new
  end

  # GET /emcs/1/edit
  def edit
  end

  # POST /emcs
  # POST /emcs.json
  def create
    @emc = Emc.new(emc_params)

    respond_to do |format|
      if @emc.save
        format.html { redirect_to @emc, notice: 'Emc was successfully created.' }
        format.json { render :show, status: :created, location: @emc }
      else
        format.html { render :new }
        format.json { render json: @emc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emcs/1
  # PATCH/PUT /emcs/1.json
  def update
    respond_to do |format|
      if @emc.update(emc_params)
        format.html { redirect_to @emc, notice: 'Emc was successfully updated.' }
        format.json { render :show, status: :ok, location: @emc }
      else
        format.html { render :edit }
        format.json { render json: @emc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emcs/1
  # DELETE /emcs/1.json
  def destroy
    @emc.destroy
    respond_to do |format|
      format.html { redirect_to emcs_url, notice: 'Emc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emc
      @emc = Emc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emc_params
      params.require(:emc).permit(:name, :description)
    end
end

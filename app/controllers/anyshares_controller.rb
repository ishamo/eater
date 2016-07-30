class AnysharesController < ApplicationController
  before_action :set_anyshare, only: [:show, :edit, :update, :destroy]

  # GET /anyshares
  # GET /anyshares.json
  def index
    @anyshares = Anyshare.all
	@anyshare_count = Anyshare.count
  end

  # GET /anyshares/1
  # GET /anyshares/1.json
  def show
  end

  # GET /anyshares/new
  def new
    @anyshare = Anyshare.new
  end

  # GET /anyshares/1/edit
  def edit
  end

  # POST /anyshares
  # POST /anyshares.json
  def create
    @anyshare = Anyshare.new(anyshare_params)

    respond_to do |format|
      if @anyshare.save
        format.html { redirect_to @anyshare, notice: 'Anyshare was successfully created.' }
        format.json { render :show, status: :created, location: @anyshare }
      else
        format.html { render :new }
        format.json { render json: @anyshare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anyshares/1
  # PATCH/PUT /anyshares/1.json
  def update
    respond_to do |format|
      if @anyshare.update(anyshare_params)
        format.html { redirect_to @anyshare, notice: 'Anyshare was successfully updated.' }
        format.json { render :show, status: :ok, location: @anyshare }
      else
        format.html { render :edit }
        format.json { render json: @anyshare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anyshares/1
  # DELETE /anyshares/1.json
  def destroy
    @anyshare.destroy
    respond_to do |format|
      format.html { redirect_to anyshares_url, notice: 'Anyshare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anyshare
      @anyshare = Anyshare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anyshare_params
      params.require(:anyshare).permit(:name, :description)
    end
end

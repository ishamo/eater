class BigdataController < ApplicationController
  before_action :set_bigdatum, only: [:show, :edit, :update, :destroy]

  # GET /bigdata
  # GET /bigdata.json
  def index
    @bigdata = Bigdatum.all
	@bigdata_count = Bigdatum.count
  end

  # GET /bigdata/1
  # GET /bigdata/1.json
  def show
  end

  # GET /bigdata/new
  def new
    @bigdatum = Bigdatum.new
  end

  # GET /bigdata/1/edit
  def edit
  end

  # POST /bigdata
  # POST /bigdata.json
  def create
    @bigdatum = Bigdatum.new(bigdatum_params)

    respond_to do |format|
      if @bigdatum.save
        format.html { redirect_to @bigdatum, notice: 'Bigdatum was successfully created.' }
        format.json { render :show, status: :created, location: @bigdatum }
      else
        format.html { render :new }
        format.json { render json: @bigdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bigdata/1
  # PATCH/PUT /bigdata/1.json
  def update
    respond_to do |format|
      if @bigdatum.update(bigdatum_params)
        format.html { redirect_to @bigdatum, notice: 'Bigdatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @bigdatum }
      else
        format.html { render :edit }
        format.json { render json: @bigdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bigdata/1
  # DELETE /bigdata/1.json
  def destroy
    @bigdatum.destroy
    respond_to do |format|
      format.html { redirect_to bigdata_url, notice: 'Bigdatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bigdatum
      @bigdatum = Bigdatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bigdatum_params
      params.require(:bigdatum).permit(:name, :description)
    end
end

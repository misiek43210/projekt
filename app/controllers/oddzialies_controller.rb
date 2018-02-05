class OddzialiesController < ApplicationController
  before_action :set_oddzialy, only: [:show, :edit, :update, :destroy]

  # GET /oddzialies
  # GET /oddzialies.json
  def index
    @oddzialies = Oddzialy.all
  end

  # GET /oddzialies/1
  # GET /oddzialies/1.json
  def show
  end

  # GET /oddzialies/new
  def new
    @oddzialy = Oddzialy.new
  end

  # GET /oddzialies/1/edit
  def edit
  end

  # POST /oddzialies
  # POST /oddzialies.json
  def create
    @oddzialy = Oddzialy.new(oddzialy_params)

    respond_to do |format|
      if @oddzialy.save
        format.html { redirect_to @oddzialy, notice: 'Oddzialy was successfully created.' }
        format.json { render :show, status: :created, location: @oddzialy }
      else
        format.html { render :new }
        format.json { render json: @oddzialy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oddzialies/1
  # PATCH/PUT /oddzialies/1.json
  def update
    respond_to do |format|
      if @oddzialy.update(oddzialy_params)
        format.html { redirect_to @oddzialy, notice: 'Oddzialy was successfully updated.' }
        format.json { render :show, status: :ok, location: @oddzialy }
      else
        format.html { render :edit }
        format.json { render json: @oddzialy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oddzialies/1
  # DELETE /oddzialies/1.json
  def destroy
    @oddzialy.destroy
    respond_to do |format|
      format.html { redirect_to oddzialies_url, notice: 'Oddzialy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oddzialy
      @oddzialy = Oddzialy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oddzialy_params
      params.require(:oddzialy).permit(:ID_oddzialu, :oddzial)
    end
end

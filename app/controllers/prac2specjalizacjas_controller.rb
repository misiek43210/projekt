class Prac2specjalizacjasController < ApplicationController
  before_action :set_prac2specjalizacja, only: [:show, :edit, :update, :destroy]

  # GET /prac2specjalizacjas
  # GET /prac2specjalizacjas.json
  def index
    @prac2specjalizacjas = Prac2specjalizacja.all
  end

  # GET /prac2specjalizacjas/1
  # GET /prac2specjalizacjas/1.json
  def show
  end

  # GET /prac2specjalizacjas/new
  def new
    @prac2specjalizacja = Prac2specjalizacja.new
  end

  # GET /prac2specjalizacjas/1/edit
  def edit
  end

  # POST /prac2specjalizacjas
  # POST /prac2specjalizacjas.json
  def create
    @prac2specjalizacja = Prac2specjalizacja.new(prac2specjalizacja_params)

    respond_to do |format|
      if @prac2specjalizacja.save
        format.html { redirect_to @prac2specjalizacja, notice: 'Prac2specjalizacja was successfully created.' }
        format.json { render :show, status: :created, location: @prac2specjalizacja }
      else
        format.html { render :new }
        format.json { render json: @prac2specjalizacja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prac2specjalizacjas/1
  # PATCH/PUT /prac2specjalizacjas/1.json
  def update
    respond_to do |format|
      if @prac2specjalizacja.update(prac2specjalizacja_params)
        format.html { redirect_to @prac2specjalizacja, notice: 'Prac2specjalizacja was successfully updated.' }
        format.json { render :show, status: :ok, location: @prac2specjalizacja }
      else
        format.html { render :edit }
        format.json { render json: @prac2specjalizacja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prac2specjalizacjas/1
  # DELETE /prac2specjalizacjas/1.json
  def destroy
    @prac2specjalizacja.destroy
    respond_to do |format|
      format.html { redirect_to prac2specjalizacjas_url, notice: 'Prac2specjalizacja was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prac2specjalizacja
      @prac2specjalizacja = Prac2specjalizacja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prac2specjalizacja_params
      params.require(:prac2specjalizacja).permit(:ID_pracownika, :ID_specjalizacji)
    end
end

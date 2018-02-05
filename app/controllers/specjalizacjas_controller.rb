class SpecjalizacjasController < ApplicationController
  before_action :set_specjalizacja, only: [:show, :edit, :update, :destroy]

  # GET /specjalizacjas
  # GET /specjalizacjas.json
  def index
    @specjalizacjas = Specjalizacja.all
  end

  # GET /specjalizacjas/1
  # GET /specjalizacjas/1.json
  def show
  end

  # GET /specjalizacjas/new
  def new
    @specjalizacja = Specjalizacja.new
  end

  # GET /specjalizacjas/1/edit
  def edit
  end

  # POST /specjalizacjas
  # POST /specjalizacjas.json
  def create
    @specjalizacja = Specjalizacja.new(specjalizacja_params)

    respond_to do |format|
      if @specjalizacja.save
        format.html { redirect_to @specjalizacja, notice: 'Specjalizacja was successfully created.' }
        format.json { render :show, status: :created, location: @specjalizacja }
      else
        format.html { render :new }
        format.json { render json: @specjalizacja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specjalizacjas/1
  # PATCH/PUT /specjalizacjas/1.json
  def update
    respond_to do |format|
      if @specjalizacja.update(specjalizacja_params)
        format.html { redirect_to @specjalizacja, notice: 'Specjalizacja was successfully updated.' }
        format.json { render :show, status: :ok, location: @specjalizacja }
      else
        format.html { render :edit }
        format.json { render json: @specjalizacja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specjalizacjas/1
  # DELETE /specjalizacjas/1.json
  def destroy
    @specjalizacja.destroy
    respond_to do |format|
      format.html { redirect_to specjalizacjas_url, notice: 'Specjalizacja was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specjalizacja
      @specjalizacja = Specjalizacja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specjalizacja_params
      params.require(:specjalizacja).permit(:ID_specjalizacji, :specjalizacja)
    end
end
